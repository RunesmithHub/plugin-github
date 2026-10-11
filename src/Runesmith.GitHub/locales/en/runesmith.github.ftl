### The GitHub plugin's text in English, the source every translation starts from. The build turns each message into a member of the
### Strings class, such as Strings.CommandSignIn.
###
### GitHub, GitHub App, GitHub CLI, Client ID, Manage Access and Enable Device Flow are GitHub's own names; GitHub's pages show them in
### English. $account is the name of an account or an organization on GitHub.

## Commands, in Tools › GitHub and the command palette.

command-sign-in = Sign In to GitHub...
command-sign-in-description = Sign in to GitHub in the browser, or with the GitHub CLI or a token
command-manage-access = Manage GitHub Access...
command-manage-access-description = Choose which repositories and organizations Runesmith may use
command-add-organization = Add GitHub Organization...
command-add-organization-description = Let Runesmith use the repositories of another organization, by installing the GitHub App there
command-sign-out = Sign Out of GitHub
command-sign-out-description = Forget the GitHub sign-in and delete its tokens

## Settings.

setting-client-id = Client ID
setting-client-id-description = The client ID of your own GitHub App, from the app's settings on GitHub; the app needs the device flow turned on. Leave it empty to sign in with Runesmith's app.
setting-app-slug = App name in URLs
setting-app-slug-description = Your own app's name as it appears in its address, github.com/apps/<name>, for adding organizations and Manage Access. Used only with Client ID.

## Signing in and out.

sign-in = Sign In
sign-in-to-github = Sign in to GitHub
sign-out = Sign Out
signed-in-as = Signed in to GitHub as { $account }
signed-in-message = Choose the repositories and organizations Runesmith may use with Manage Access.
manage-access = Manage Access
sign-in-needs-dialogs = Signing in needs a newer Runesmith
sign-in-needs-dialogs-message = This version of Runesmith does not let plugins show dialogs.
sign-out-title = Sign out of GitHub?
sign-out-message = Runesmith forgets the sign-in of { $account }. Cloning and pushing to github.com then use your own Git setup.
signed-out = Signed out of GitHub
sign-in-expired = The GitHub sign-in expired. Sign in to GitHub again.
sign-in-refused = GitHub no longer accepts the sign-in. Sign in to GitHub again.
sign-in-to-continue = Sign in to GitHub to continue.
cli-not-signed-in = The GitHub CLI is not signed in. Run gh auth login in a terminal first.
cli-sign-in-broken = The GitHub CLI's sign-in no longer works. Sign in to GitHub again.
open-address-in-browser = Open this address in a browser
cancel = Cancel
back = Back
loading = Loading...
try-again = Try again

## The sign-in dialog.

sign-in-intro = Runesmith signs in as a GitHub App. You approve it on GitHub and choose which repositories and organizations it may use.
continue-with-github = Continue with GitHub
use-cli = Use the GitHub CLI's sign-in
use-cli-hint = Uses the account you signed in to with gh auth login.
use-cli-missing = Install the GitHub CLI, gh, and run gh auth login to use this.
use-token = Sign in with a token
use-token-hint = Paste a fine-grained or classic personal access token.
tokens-in-system-store = Tokens are kept in the system's secret store.
tokens-in-file = No system secret store was found, so tokens are kept in a file only you can read.
tokens-in-memory = Tokens are kept only until Runesmith closes.
signing-in = Signing in...
cli-reading = Reading the GitHub CLI's sign-in...

# Signing in through the browser, with a code.
flow-asking-code = Asking GitHub for a code...
flow-enter-code = Enter this code on GitHub to approve Runesmith. You choose which repositories it may use right after.
flow-copy-code = Copy the code
copied = Copied
flow-copy-and-open = Copy Code and Open GitHub
# $address is where the code is entered, such as github.com/login/device.
flow-waiting = Waiting for approval on { $address }
# $time is a time of day.
flow-code-expires = The code works until { $time }.
flow-not-started = GitHub did not start the sign-in. Check that the GitHub App's client ID is right and the app has the device flow turned on.
flow-denied = The sign-in was cancelled on GitHub.
flow-disabled = The GitHub App does not have the device flow turned on. Turn on Enable Device Flow in the app's settings.
flow-unknown-client = GitHub does not know the GitHub App's client ID. Check Client ID in Settings, GitHub.
# $reason is GitHub's own description.
flow-not-finished-reason = GitHub did not finish the sign-in: { $reason }
flow-not-finished = GitHub did not finish the sign-in. Try again.
flow-code-expired = The code expired before it was entered on GitHub. Start the sign-in again for a new code.

# Signing in with a personal access token.
token-intro = Paste a personal access token. Runesmith checks it with GitHub and keeps it in the secret store.
token-hint = A fine-grained token needs Contents, Metadata and Pull requests access to the repositories you use; a classic token needs the repo and workflow scopes.
token-create-fine-grained = Create a fine-grained token
token-create-classic = Create a classic token
token-refused = GitHub does not accept this token. Check that it is complete and not expired.
# What the two kinds of token start with, shown in the empty field.
token-placeholder = github_pat_... or ghp_...

# Shown instead of the sign-in when no GitHub App is set up.
setup-title = Set up Runesmith's GitHub App first
setup-intro = Signing in through the browser needs a GitHub App, registered once by you or your organization:
# $address is the page to create the app on, github.com/settings/apps/new. It is shown in bold.
setup-step-create = Create a GitHub App on { $address }. Any homepage URL works; turn off the webhook.
# $option is the name of the option on GitHub, Enable Device Flow. It is shown in bold.
setup-step-device-flow = Turn on { $option }.
# $permissions is setup-permissions.
setup-step-permissions = Give it these permissions: { $permissions }.
# The names of the permissions are GitHub's own; keep them as they are and translate what is in the brackets.
setup-permissions = Contents (read and write), Metadata (read), Pull requests (read and write), Workflows (read and write), Checks (read), Commit statuses (read) and Email addresses (read)
# $field is the name of the field on GitHub, Client ID. It is shown in bold.
setup-step-client-id = Copy its { $field } into Settings, GitHub, Client ID.
register-app = Register a GitHub App
open-settings = Open Settings

## The account widget in the toolbar.

widget-tip = GitHub: { $account }
signed-in-with-cli = Signed in with the GitHub CLI
signed-in-with-token = Signed in with a personal access token
signed-in-with-own-app = Signed in with your own GitHub App
signed-in-with-app = Signed in with Runesmith's GitHub App
signed-in-with-the-app = Signed in with the GitHub App
manage-access-ellipsis = Manage Access...
manage-tokens = Manage Tokens...
manage-tokens-button = Manage Tokens
open-profile = Open Profile on GitHub
clone-repository = Clone Repository...
organizations = Organizations
add-organization-ellipsis = Add an organization...
configure = Configure
configure-tip = Choose which repositories of { $account } Runesmith may use, on GitHub

## Organizations.

add-organization = Add an organization
# The name used for the app when it has none of its own.
runesmith-app = Runesmith's GitHub App
# $app is the GitHub App's name.
add-organization-intro = GitHub asks which organization to add { $app } to, and which of its repositories Runesmith may use.
add-organization-owners = Organization owners install it right away; members send a request that an owner approves.
add-organization-return = Come back to Runesmith when you are done; the new repositories show up on their own.
continue-on-github = Continue on GitHub
organization-added = Runesmith can now use repositories of { $account }
# $names is a list of names with commas between them, $last the last name.
organizations-added = Runesmith can now use repositories of { $names } and { $last }
organization-added-message = Its repositories are in the clone dialog now.
# Which repositories of an account Runesmith may use.
scope-all = All repositories
# Variables:
#   $count (Number) - how many repositories were chosen
scope-selected = { $count } selected

## Settings › GitHub.

not-signed-in = Not signed in
not-signed-in-hint = Sign in to clone from your account and organizations, push to github.com and see pull requests.
# Before the other ways to sign in.
or-label = Or:
# $app is the GitHub App's name.
app-signing-in-with = Signing in with { $app }
app-built-in-hint = Runesmith's own GitHub App, so there is nothing to register. You choose which repositories and organizations it may use.
app-own = Signing in with your own GitHub App
# $client is the app's client ID.
app-own-hint = The app with client ID { $client }, from Client ID below. Sign in again after changing it.
app-none = No GitHub App set up
app-none-hint = Signing in through the browser needs a GitHub App with the device flow turned on. Register one, then put its client ID in Client ID below.
register-app-guide = How to register it
register-app-guide-one = How to register one
advanced = Advanced
own-app-title = Use your own GitHub App
own-app-active = Runesmith signs in with the app in Client ID and App name in URLs below instead of its own.
own-app-hint = Forks and companies can sign in with an app of their own: register it, then put its client ID in Client ID below and its name in App name in URLs.
own-app-back = Back to Runesmith's app
access-title = Repository access
access-cli = Runesmith uses the repositories the GitHub CLI's sign-in can reach, including those of your organizations. Organization access comes from that sign-in, not from Runesmith.
access-token = Runesmith uses the repositories the token can reach, including those of organizations the token was given access to. Change the token on GitHub to reach more.
access-app = The accounts and organizations the GitHub App is installed on. Runesmith may use only the repositories they give it.
access-none = The app is not installed anywhere yet. Add your account or an organization to choose repositories.
owner-you = Your account
owner-organization = Organization
owner-account = Account

## What GitHub answers. $repository is a repository's name, such as owner/name.

github-unreachable = GitHub could not be reached. Check the connection and try again.
github-slow = GitHub took too long to answer. Try again in a moment.
github-bad-answer = GitHub sent an answer Runesmith does not understand.
github-empty-answer = GitHub sent an empty answer.
repository-not-found = GitHub could not find { $repository }, or the sign-in has no access to it.
pull-requests-forbidden = The sign-in may not read the pull requests of { $repository }.
pull-requests-not-returned = GitHub did not return the pull requests.
# $time is a time of day.
rate-limited = GitHub's rate limit is used up. It resets at { $time }.
# $reason is GitHub's own message.
refused-reason = GitHub refused: { $reason }. Check which repositories Runesmith may use with Manage Access.
refused = GitHub refused. Check which repositories Runesmith may use with Manage Access.
not-found = GitHub could not find it, or the sign-in has no access to it.
# Variables:
#   $status (Number) - the HTTP status code
server-error = GitHub answered with an error ({ $status }). Try again in a moment.
request-not-accepted = GitHub did not accept the request.

## Times.

time-just-now = just now
# Variables:
#   $count (Number) - how many minutes
time-minutes-ago =
    { $count ->
        [one] 1 minute ago
       *[other] { $count } minutes ago
    }
# Variables:
#   $count (Number) - how many hours
time-hours-ago =
    { $count ->
        [one] 1 hour ago
       *[other] { $count } hours ago
    }
# Variables:
#   $count (Number) - how many days
time-days-ago =
    { $count ->
        [one] 1 day ago
       *[other] { $count } days ago
    }
# Variables:
#   $count (Number) - how many months
time-months-ago =
    { $count ->
        [one] 1 month ago
       *[other] { $count } months ago
    }
# Variables:
#   $count (Number) - how many years
time-years-ago =
    { $count ->
        [one] 1 year ago
       *[other] { $count } years ago
    }
