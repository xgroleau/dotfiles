# -- ZGen loading --
[ -d "$ZGEN_DIR" ] || git clone https://github.com/tarjoilija/zgen "$ZGEN_DIR"
source $ZGEN_SOURCE

if ! zgen saved; then
	echo "Initializing zgen"

	zgen load romkatv/powerlevel10k powerlevel10k
	zgen load zsh-users/zsh-syntax-highlighting
	zgen load zsh-users/zsh-completions
	zgen load zsh-users/zsh-autosuggestions

	zgen oh-my-zsh

	[ -z "$SSH_CONNECTION" ] && zgen load zdharma/fast-syntax-highlighting
	zgen save
fi

#-- Zsh params --
CASE_SENSITIVE="false"

HYPHEN_INSENSITIVE="false"

ENABLE_CORRECTION="true"

HIST_STAMPS="dd/mm/yyyy"

#-- Local configuration --

source ~/.aliases

#Loading local configuration
[[ ! -f ~/.zshrc.local ]] || source ~/.zshrc.local

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

