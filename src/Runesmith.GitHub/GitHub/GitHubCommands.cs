using System.Composition;
using Runesmith.GitHub.Views.Account;
using Runesmith.Sdk.Commands;

namespace Runesmith.GitHub.GitHub;

/// <summary>The GitHub account's commands: signing in and out, and choosing what Runesmith may access.</summary>
[Export(typeof(ICommandContributor))]
[method: ImportingConstructor]
internal sealed class GitHubCommands(AccountActions actions, OrganizationAccess organizations) : ICommandContributor
{
    public const string SignOut = "github.signOut";
    public const string ManageAccess = "github.manageAccess";

    /// <summary>Adds an organization to the GitHub App; named <c>&lt;host id&gt;.addOrganization</c>, which the Git plugin's clone dialog looks for.</summary>
    public const string AddOrganization = "github.addOrganization";

    private const string Category = "GitHub";
    private const string Menu = "Tools/GitHub";

    public void Contribute(ICommandRegistry registry)
    {
        ArgumentNullException.ThrowIfNull(registry);
        GitHubIcons.EnsureRegistered();
        var account = actions.Account;

        Add(GitHubAccount.SignInCommand, Strings.CommandSignIn, GitHubIcons.GitHub, Strings.CommandSignInDescription,
            _ => actions.SignInAsync(), _ => !account.IsSignedIn, 0);
        Add(ManageAccess, Strings.CommandManageAccess, "shield", Strings.CommandManageAccessDescription,
            _ =>
            {
                actions.ManageAccess();
                return Task.CompletedTask;
            }, _ => account.IsSignedIn && account.Kind != GitHubSignInKind.Cli, 1);
        Add(AddOrganization, Strings.CommandAddOrganization, GitHubIcons.Building, Strings.CommandAddOrganizationDescription,
            _ => organizations.AddAsync(), _ => organizations.CanAdd, 2);
        Add(SignOut, Strings.CommandSignOut, GitHubIcons.LogOut, Strings.CommandSignOutDescription, _ => actions.SignOutAsync(), _ => account.IsSignedIn, 3);

        void Add(string id, string title, string icon, string description, Func<object?, Task> execute, Func<object?, bool> canExecute, int order)
        {
            registry.Add(new CommandDefinition(id, title, Category) { Icon = icon, Description = description }, execute, canExecute);
            registry.AddMenuItem(new MenuItemDefinition(Menu, id, "1-account", order));
        }
    }
}
