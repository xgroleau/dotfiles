#!/usr/bin/env bash
set -euo pipefail

packages=$@
packages=${packages/imagemagick/ImageMagick}
packages=${packages/xmllint/libxml2}
sudo dnf check-update
sudo dnf -y in $packages
