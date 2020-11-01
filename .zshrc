#-- Theme p10k --
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#-- Zsh params --
ZSH_THEME="powerlevel10k/powerlevel10k"

CASE_SENSITIVE="false"

HYPHEN_INSENSITIVE="false"

ENABLE_CORRECTION="true"

HIST_STAMPS="dd/mm/yyyy"


#-- Oh-my-zsh --

plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
	zsh-completions
	vi-mode
	docker
	docker-compose
)
# Start plugins
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh
source ~/.aliases
#-- Local configuration --
#Loading local configuration
[[ ! -f ~/.zshrc.local ]] || source ~/.zshrc.local

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

