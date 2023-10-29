# POC of a Zsh plugin leveraging Gawk

## Requirements

- A recent version of [Gawk](https://www.gnu.org/software/gawk/). On macOS this can be
  installed by using [Homebrew](https://brew.sh/): `brew install gawk`.

## Installation

Use your favorite plugin manager. For example, here is the configuration for
[Sheldon](https://github.com/rossmacarthur/sheldon):

```toml
# ~/.config/sheldon/plugins.toml

[plugins.poc-zsh-plugin]
github = "HerCerM/poc-zsh-plugin"
```

## Usage

The plugin provides the Zsh function `pzp_length`, which prints to stdout the length of
the string provided as the first argument. For example:

Command:

```text
pzp_length Hang
```

Stdout:

```text
4
```
