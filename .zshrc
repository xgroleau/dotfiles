# -- ZGen loading --
ZGENOM_DIR="${XDG_DATA_HOME:="$HOME/.local/share"}/zgenom";
ZGENOM_SOURCE="${ZGENOM_DIR}/zgen.zsh";
[ -d "$ZGENOM_DIR" ] || git clone https://github.com/jandamm/zgenom "$ZGENOM_DIR"
source $ZGENOM_SOURCE

if ! zgenom saved; then
    zgenom load djui/alias-tips
    zgenom load unixorn/autoupdate-zgen
    zgenom load romkatv/powerlevel10k powerlevel10k
    zgenom load zsh-users/zsh-syntax-highlighting
    zgenom load zsh-users/zsh-completions
    zgenom load zsh-users/zsh-autosuggestions

    zgenom oh-my-zsh
    zgenom oh-my-zsh plugins/git
    zgenom oh-my-zsh plugins/sudo

    [ -z "$SSH_CONNECTION" ] && zgenom load zsh-users/fast-syntax-highlighting
    zgenom save
fi

#-- Zsh params --
CASE_SENSITIVE="false"

HYPHEN_INSENSITIVE="false"

ENABLE_CORRECTION="true"

HIST_STAMPS="dd/mm/yyyy"

#-- Configuration --
# Aliases
source ~/.aliases
# Functions
fpath=(~/.zshfn "${fpath[@]}")
autoload Uz ~/.zshfn/*(.:t)

#-- Local configuration --
# Loading local configuration
[[ ! -f ~/.zshrc.local ]] || source ~/.zshrc.local

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
