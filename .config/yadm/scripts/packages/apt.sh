#!/usr/bin/env bash
set -euo pipefail

packages=$@
packages=${packages/xrandr/x11-xserver-utils}
packages=${packages/setxkbmap/x11-xkb-utils}
packages=${packages/fd/fd-find}
packages=${packages/network-manager-applet/network-manager-gnome}
packages=${packages/xmllint/libxml2-utils}
packages=${packages/picom/}
packages=${packages/x11-tools/x11-utils}
sudo apt-get update
sudo apt-get -y install $packages
