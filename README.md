# dotfiles
> This repo is not maintained anymore, I have migrated to a configuration with Nix, see [nix-config](https://github.com/xgroleau/nix-config).

My attempt at managing my system configurations. I am using [yadm](https://yadm.io/) to manage my dotfiles.

## Installation 

``` sh
yadm clone https://github.com/xgroleau/dotfiles
```
Then you can run and follow the bootstrap script to install dependencies

### Bootstrap

The bootstrap script will install the dependencies via your package manager. Here are the supported package managers

- apt
- dnf
- zypper

You can install a full (with a window manager, app runner and other) or a minimal configuration which will only install some applications.
