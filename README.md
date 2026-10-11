# GitHub for Runesmith

The official GitHub plugin for [Runesmith](https://github.com/RunesmithHub/Runesmith), `runesmith.github`. It signs you in to GitHub and,
through the [Git plugin](https://github.com/RunesmithHub/plugin-git), adds a **GitHub** tab to the clone dialog with your account's and
organizations' repositories, the open repository's pull requests with their reviews and checks, and links to github.com.

Runesmith signs in as its own GitHub App with GitHub's device flow, or reuses the sign-in of the `gh` command. The
[GitHub documentation](https://docs.runesmith.dev/plugins/github) describes signing in, organizations and settings.

## Capabilities

| Capability | Why |
| --- | --- |
| `network` | Talks to GitHub to sign you in, list repositories and show pull requests; only `github.com`, `api.github.com` and `avatars.githubusercontent.com`. |
| `credentials` | Keeps your GitHub sign-in in your system's secret store. |
| `process` | Opens GitHub in your browser, and can reuse the sign-in of the `gh` command. |
| `filesystem` | Caches avatars. |
| `environment` | Finds the `gh` command on your `PATH`. |

## Install

Install it from Runesmith's plugin manager, or from [hub.runesmith.dev](https://hub.runesmith.dev), together with the Git plugin, which
shows what this plugin provides.

## Translations

The plugin's text is in English in `src/Runesmith.GitHub/locales/en/runesmith.github.ftl`, a [Fluent](https://projectfluent.org) file. Text
for a new message goes there, and the code reads it from the generated `Strings` class. A language pack translates the file; see
[Language packs](https://docs.runesmith.dev/plugins/language-packs).

## Build and test

You need the .NET SDK that `global.json` names. Runesmith's packages come from the plugin hub's feed, which `nuget.config` sets up.

```bash
dotnet build plugin-github.slnx
dotnet test --solution plugin-github.slnx
dotnet build src/Runesmith.GitHub -t:InstallPlugin
```

`InstallPlugin` copies the built plugin into your Runesmith plugins folder; restart Runesmith to load it. [CONTRIBUTING.md](CONTRIBUTING.md)
has the checks a change must pass, and the [Runesmith documentation](https://docs.runesmith.dev/) covers writing plugins.

## License

[Apache License 2.0](LICENSE).
