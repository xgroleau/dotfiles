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
	docker
	docker-compose
)

source $ZSH/oh-my-zsh.sh

#-- Compilation flags --
export ARCHFLAGS="-arch x86_64"

#-- Aliases --
# Note that oh-my-zsh provides a lot of good aliases

# helpers
alias grep="grep --color=auto"
alias df="df -h"
alias du="du -h"

# vim
alias vim="nvim"
alias vi="nvim"

# tmux aliases
alias ta="tmux attach"
alias tls="tmux ls"
alias tat="tmux attach -t"
alias tns="tmux new-session -s"


#-- Local configuration --
#Loading local configuration
[[ ! -f ~/.zshrc.local ]] || source ~/.zshrc.local

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

