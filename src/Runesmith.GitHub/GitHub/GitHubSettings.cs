using System.Composition;
using Runesmith.Sdk.Settings;

namespace Runesmith.GitHub.GitHub;

/// <summary>The GitHub settings: your own GitHub App to sign in as, instead of the one Runesmith ships.</summary>
[Export(typeof(ISettingContributor))]
internal sealed class GitHubSettings : ISettingContributor
{
    public const string Category = "GitHub";
    public const string ClientId = "github.clientId";
    public const string AppSlug = "github.appSlug";

    public IEnumerable<SettingDefinition> Settings =>
    [
        new(ClientId, Strings.SettingClientId, Category, "") { Description = Strings.SettingClientIdDescription },
        new(AppSlug, Strings.SettingAppSlug, Category, "") { Description = Strings.SettingAppSlugDescription },
    ];
}
