#!/usr/bin/env bash
set -euo pipefail


git clone https://github.com/hlissner/doom-emacs ~/.emacs.d
git -C ~/.emacs.d checkout develop #Just in case master becomes the default
~/.emacs.d/bin/doom --yes install
