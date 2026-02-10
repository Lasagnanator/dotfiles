### SYSTEM ###

# Local path folder
set LOCAL_PATH "$HOME/.local/bin"
not test -d "$LOCAL_PATH" && mkdir -p "$LOCAL_PATH"
fish_add_path "$LOCAL_PATH"

# WSL
if test -n "$WSLENV"
    fish_add_path /mnt/c/Windows/ /mnt/c/Windows/System32 "/mnt/c/Windows/System32/WindowsPowerShell/v1.0"
    function storePathForWindowsTerminal --on-variable PWD
        if test -n "$WT_SESSION"
            printf "\e]9;9;%s\e\\" (wslpath -w "$PWD")
        end
    end
end

### ENVIRONMENT ###

set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx COLORTERM truecolor

### ALIASES ###

if status is-interactive
    # Utilities
    alias v nvim
    alias vi nvim
    alias vim nvim
    alias sv 'sudo -E nvim'
    alias g git
    alias d docker
    alias k kubectl
    alias t task
    alias b bat
    alias ke kubie
    alias tf terraform
    alias ot opentofu
    alias lz lazygit
    alias ldk lazydocker
    alias cm chezmoi
    alias open xdg-open
    alias venv activate_venv
    alias cdg cd_git_root
    alias srsync 'rsync --rsync-path "sudo rsync"'

    # Eza
    alias ls="eza"
    alias l="eza"
    alias ll="eza --long --smart-group --group-directories-first --git --icons"
    alias la="eza --all --long --smart-group --group-directories-first --git --icons"
    alias lm="eza --all --long --git --icons --sort=modified"
    alias lc="eza --all --long --binary --extended --group --header --links --inode --created --modified --accessed --blocksize --group-directories-first --git --icons"
    alias lt="eza --all --tree"

    # Package managers
    alias pac 'sudo pacman'
    alias zyp 'sudo zypper'
    alias dnf 'sudo dnf'
    alias apt 'sudo apt'
end

### KEYBINDS ###

bind \b backward-kill-word
bind \e\[3\;5~ kill-word

### FUNCTIONS ###

function activate_venv --description "Activates Python virtual environment from current directory or git root"
    set BASE_DIR (git rev-parse --show-toplevel 2>/dev/null)
    if test -z "$BASE_DIR"
        set BASE_DIR "$PWD"
    end
    if test -f "$BASE_DIR/.venv/bin/activate.fish"
        source "$BASE_DIR/.venv/bin/activate.fish"
        echo -e '\033[1;32mLoaded virtual environment!'
    else
        echo -e "\\033[1;31mNo virtual environment found in $BASE_DIR!"
    end
end

function cd_git_root --description "Change directory to the root of the current git project"
    set GIT_ROOT (git rev-parse --show-toplevel 2>/dev/null)
    if test -n "$GIT_ROOT"
        cd "$GIT_ROOT"
    else
        echo -e "\\033[1;31mYou are not in a git directory!"
    end
end

### INTEGRATIONS ###

# Scripts
command -q starship && starship init fish | source && enable_transience
command -q direnv && direnv hook fish | source
command -q zoxide && zoxide init fish | source
command -q rbenv && rbenv init - --no-rehash fish | source

# Kubectl
if command -v kubectl >/dev/null 2>&1
    set KUBECONFIGS_PATH "$HOME/.kube/config.d/"
    not test -d "$KUBECONFIGS_PATH" && mkdir -p "$KUBECONFIGS_PATH"
    set KUBECONFIG "$(find "$KUBECONFIGS_PATH" -type f | tr '\n' ':')"
    set -gx KUBECONFIG
end

### PLUGINS ###

# fzf.fish
fzf_configure_bindings --variable=\e\cv --directory=\ct

### DISTRO-SPECIFIC ###

# Arch
set -gx AUR_REPO_PATH '/aur'
set -gx AUR_DB_PATH "$AUR_REPO_PATH/aur.db"
command -q cilium-cli && alias cilium cilium-cli
