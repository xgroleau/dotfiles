#!/usr/bin/env bash
set -euo pipefail


packages=$@
packages=${packages/acpitool/acpi}
packages=${packages/imagemagick/ImageMagick}
packages=${packages/network-manager-applet/NetworkManager-applet}
packages=${packages/xmllint/libxml2-tools}
sudo zypper ref
sudo zypper in -y $packages
