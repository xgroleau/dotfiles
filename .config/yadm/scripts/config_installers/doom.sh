#!/usr/bin/env bash
set -euo pipefail


function doom_install {
	git clone https://github.com/hlissner/doom-emacs ${HOME}/.emacs.d
	git -C ${HOME}/.emacs.d checkout develop #Just in case master becomes the default
	${HOME}/.emacs.d/bin/doom --yes install
}

function doom_update {
	${HOME}/.emacs.d/bin/doom upgrade
	${HOME}/.emacs.d/bin/doom sync -u
}

# if already install
if [ -d "${HOME}/.emacs.d" ]; then
	doom_update
else 
	doom_install
fi
