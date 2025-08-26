# Lasagna's wasted time and effort
> You, a normal person:
> *"Nooooo you can't spend all your free time on ricing every pointless thing on your laptop!"*
>
> Me, enlightened by the Way Of The Vim, Master of the Tile and Hater of the Rodent:
> *"AHAHAHAHA COLORFUL LINUX GO BRRRRR"*

Dotfiles used across multiple OSes and distros.
Managed through `chezmoi`.

## Dependencies

These are the binaries that are configured to work with, are used by this configuration files or I generally use to work, mix and match as you please.

### Mandatory

- git
- zsh
- chezmoi
- fzf
- direnv
- zoxide
- eza

### Optional

- nvim
- ranger (NNN soon)
- SDKMan
- UV
- Fuck

## Template variables

If `chezmoi` usage is planned those are the variables that should be declared in the `.chezmoidata` file.

```toml
[user.git]
name = ""
email = ""
```
