#-- Editor config --
if [[ -n ${SSH_CONNECTION-} ]]; then
    export EDITOR="vim"
else
	export EDITOR="nvim"
fi

#-- Add color to man pages --
export MANROFFOPT='-c'
export LESS_TERMCAP_mb=$(tput bold; tput setaf 2)
export LESS_TERMCAP_md=$(tput bold; tput setaf 6)
export LESS_TERMCAP_me=$(tput sgr0)
export LESS_TERMCAP_so=$(tput bold; tput setaf 3; tput setab 4)
export LESS_TERMCAP_se=$(tput rmso; tput sgr0)
export LESS_TERMCAP_us=$(tput smul; tput bold; tput setaf 7)
export LESS_TERMCAP_ue=$(tput rmul; tput sgr0)
export LESS_TERMCAP_mr=$(tput rev)
export LESS_TERMCAP_mh=$(tput dim)

# Doom emacs path
export DOOM_EMACS="${HOME}/.emacs.d"
export DOOM_EMACS_BIN="${DOOM_EMACS}/bin"
export PATH="${PATH}:${DOOM_EMACS_BIN}"

# ZGen
export ZGEN_DIR="${XDG_DATA_HOME:="$HOME/.local/share"}/zsh";
export ZGEN_SOURCE="${ZGEN_DIR}/zgen.zsh";

# local bin
export PATH="${PATH}:${HOME}/.local/bin"
export PATH="${PATH}:${HOME}/bin"

#Loading local configuration
[[ ! -f ~/.zshenv.local ]] || source ~/.zshenv.local
