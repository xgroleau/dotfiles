#!/usr/bin/env bash
set -euo pipefail

function install_missing_plugin {
	[ ! -d "${ZSH_CUSTOM:-${HOME}/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting" ] && \
		git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-${HOME}/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

	[ ! -d "${ZSH_CUSTOM:-${HOME}/.oh-my-zsh/custom}/plugins/zsh-autosuggestions" ] && \
		git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-${HOME}/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

	[ ! -d "${ZSH_CUSTOM:=${HOME}/.oh-my-zsh/custom}/plugins/zsh-completions" ] && \
		git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=${HOME}/.oh-my-zsh/custom}/plugins/zsh-completions

	[ ! -d "${ZSH_CUSTOM:-${HOME}/.oh-my-zsh/custom}/themes/powerlevel10k" ] && \
		git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-${HOME}/.oh-my-zsh/custom}/themes/powerlevel10k
}

function zsh_install {
	curl --proto '=https' --tlsv1.2 -sSfL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh > /tmp/oh-my-zsh
	chmod +x /tmp/oh-my-zsh

	#Executing oh-my-zsh
	export RUNZSH="no"
	/tmp/oh-my-zsh --keep-zshrc
}


# Already installed
if [ ! -d "${HOME}/.oh-my-zsh" ]; then
	zsh_install
fi

install_missing_plugin
