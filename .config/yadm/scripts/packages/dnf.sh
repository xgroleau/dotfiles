#!/usr/bin/env bash
set -euo pipefail

packages=$@
packages=${packages/imagemagick/ImageMagick}
sudo dnf check-update
sudo dnf -y in $packages
