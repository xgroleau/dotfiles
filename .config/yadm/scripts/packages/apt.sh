#!/usr/bin/env bash
set -euo pipefail


packages=$@
sudo apt-get update
sudo apt-get -y install $packages
