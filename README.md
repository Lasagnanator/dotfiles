# Lasagna's wasted time and effort
> You, a normal person:
> *"Nooooo you can't spend all your free time on ricing every pointless thing on your laptop!"*
>
> Me, enlightened by the Way Of The Vim, Master of the Tile and Hater of the Rodent:
> *"AHAHAHAHA COLORFUL LINUX GO BRRRRR"*

Dotfiles used across multiple OSes and distros.
Managed through `chezmoi`.

# Packages

These are the binaries that are configured to work with, are used by this configuration files or I generally use to work, mix and match as you please.

## Dependencies

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

## Environment management

- SDKMAN (Java and derivatives)
- UV (Python)
- NVM (Node and Javascript)
- Go (lmao)
- Cargo (Rust)

## Distro-specific

### Arch

- pkgfile

# Manual edits

## Rustup

Patch the completion file generated with `rustup completions zsh` with the following command:
```bash
patch "$CUSTOM_COMP_DIR/_rustup" <(echo 'LS0tIF9ydXN0dXAgICAgIDIwMjUtMDUtMjggMTM6NTY6MDQuOTc3NzIzNjc3IC0wNDAwCisrKyBfcnVzdHVwX2ZpeCAyMDI1LTA1LTI4IDE0OjA4OjQ0LjMwNDUyOTU0NCAtMDQwMApAQCAtMjMsMTYgKzIzLDE4IEBACiAnLS1oZWxwW1ByaW50IGhlbHBdJyBcCiAnLVZbUHJpbnQgdmVyc2lvbl0nIFwKICctLXZlcnNpb25bUHJpbnQgdmVyc2lvbl0nIFwKLSc6Oit0b29sY2hhaW4gLS0gUmVsZWFzZSBjaGFubmVsIChlLmcuICtzdGFibGUpIG9yIGN1c3RvbSB0b29sY2hhaW4gdG8gc2V0IG92ZXJyaWRlOl9kZWZhdWx0JyBcCisnKCtiZXRhICtuaWdodGx5KStzdGFibGVbdXNlIHRoZSBzdGFibGUgdG9vbGNoYWluXScgXAorJygrc3RhYmxlICtuaWdodGx5KStiZXRhW3VzZSB0aGUgYmV0YSB0b29sY2hhaW5dJyBcCisnKCtzdGFibGUgK2JldGEpK25pZ2h0bHlbdXNlIHRoZSBuaWdodGx5IHRvb2xjaGFpbl0nIFwKICI6OiA6X3J1c3R1cF9jb21tYW5kcyIgXAogIio6OjogOi0+cnVzdHVwIiBcCiAmJiByZXQ9MAogICAgIGNhc2UgJHN0YXRlIGluCiAgICAgKHJ1c3R1cCkKLSAgICAgICAgd29yZHM9KCRsaW5lWzJdICIke3dvcmRzW0BdfSIpCisgICAgICAgIHdvcmRzPSgkbGluZVsxXSAiJHt3b3Jkc1tAXX0iKQogICAgICAgICAoKCBDVVJSRU5UICs9IDEgKSkKLSAgICAgICAgY3VyY29udGV4dD0iJHtjdXJjb250ZXh0JToqOip9OnJ1c3R1cC1jb21tYW5kLSRsaW5lWzJdOiIKLSAgICAgICAgY2FzZSAkbGluZVsyXSBpbgorICAgICAgICBjdXJjb250ZXh0PSIke2N1cmNvbnRleHQlOio6Kn06cnVzdHVwLWNvbW1hbmQtJGxpbmVbMV06IgorICAgICAgICBjYXNlICRsaW5lWzFdIGluCiAgICAgICAgICAgICAoaW5zdGFsbCkKIF9hcmd1bWVudHMgIiR7X2FyZ3VtZW50c19vcHRpb25zW0BdfSIgOiBcCiAnLS1wcm9maWxlPVtdOlBST0ZJTEU6KG1pbmltYWwgZGVmYXVsdCBjb21wbGV0ZSknIFwK' | base64 -d)
```

