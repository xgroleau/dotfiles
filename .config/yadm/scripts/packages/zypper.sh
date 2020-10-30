#!/usr/bin/env bash
set -euo pipefail


packages=$@
packages=${packages/acpitool/acpi}
packages=${packages/imagemagick/ImageMagick}
packages=${packages/network-manager-applet/NetworkManager-applet}
sudo zypper ref
sudo zypper in -y $packages
