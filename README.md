
<h1 align="center">
Spaceship Section for warp-cli
<br>
</h1>



Current warp-cli vnet name.
<!---

## Installing
You need to source this plugin somewhere in your dotfiles. Here's how to do it with some popular tools:

### [Oh-My-Zsh]

Execute this command to clone this repo into Oh-My-Zsh plugin's folder:

```zsh
git clone https://github.com/spaceship-prompt/spaceship-section.git $ZSH_CUSTOM/plugins/spaceship-section
```

Include `spaceship-section` in Oh-My-Zsh plugins list:

```zsh
plugins=($plugins spaceship-section)
```

### [zplug]

```zsh
zplug "spaceship-prompt/spaceship-section"
```

### [antigen]

```zsh
antigen bundle "spaceship-prompt/spaceship-section"
```

### [antibody]

```zsh
antibody bundle "spaceship-prompt/spaceship-section"
```

### [zinit]

```zsh
zinit light "spaceship-prompt/spaceship-section"
```

### [zgen]

```zsh
zgen load "spaceship-prompt/spaceship-section"
```

### [sheldon]

```toml
[plugins.spaceship-section]
github = "spaceship-prompt/spaceship-section"
```

### Manual

If none of the above methods works for you, you can install Spaceship manually.

1. Clone this repo somewhere, for example to `$HOME/.zsh/spaceship-section`.
2. Source this section in your `~/.zshrc`.

### Example

```zsh
mkdir -p "$HOME/.zsh"
git clone --depth=1 https://github.com/spaceship-prompt/spaceship-section.git "$HOME/.zsh/spaceship-section"
```

For initializing prompt system add this to your `.zshrc`:

```zsh title=".zshrc"
source "~/.zsh/spaceship-section/spaceship-section.plugin.zsh"
```
-->
## Usage

After installing, add the following line to your `.zshrc` in order to include Ember section in the prompt:

```zsh
spaceship add warp_cli
```

## Options

This section is shown only in directories within a warp_cli context.

| Variable                    |              Default               | Meaning                              |
| :-------------------------- | :--------------------------------: | ------------------------------------ |
| `SPACESHIP_WARP_CLI_SHOW`   |               `true`               | Show current section                 |
| `SPACESHIP_WARP_CLI_PREFIX` | `via`                              | Prefix before section                |
| `SPACESHIP_WARP_CLI_SUFFIX` | `$SPACESHIP_PROMPT_DEFAULT_SUFFIX` | Suffix after section                 |
| `SPACESHIP_WARP_CLI_SYMBOL` |                `⛅️ `                | Character to be shown before version |
| `SPACESHIP_WARP_CLI_COLOR`  |             `yellow`               | Color of section                     |

## Contributing

First, thanks for your interest in contributing!

Contribute to this repo by submitting a pull request. Please use [conventional commits](https://www.conventionalcommits.org/), since this project adheres to [semver](https://semver.org/) and is automatically released via [semantic-release](https://github.com/semantic-release/semantic-release).



<!-- References -->

[Oh-My-Zsh]: https://ohmyz.sh/
[zplug]: https://github.com/zplug/zplug
[antigen]: https://antigen.sharats.me/
[antibody]: https://getantibody.github.io/
[zinit]: https://github.com/zdharma/zinit
[zgen]: https://github.com/tarjoilija/zgen
[sheldon]: https://sheldon.cli.rs/
