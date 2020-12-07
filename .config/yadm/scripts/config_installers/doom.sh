#!/usr/bin/env bash
set -euo pipefail


function doom_install {
	git clone https://github.com/hlissner/doom-emacs ${DOOM_EMACS}
	git -C ${DOOM_EMACS} checkout develop #Just in case master becomes the default
	${DOOM_EMACS_BIN}/doom --yes install
}

function doom_update {
	${DOOM_EMACS_BIN}/doom upgrade
	${DOOM_EMACS_BIN}/doom sync -u
}

# if already install
if [ -d "${DOOM_EMACS}" ]; then
	doom_update
else 
	doom_install
fi
