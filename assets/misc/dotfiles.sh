#!/bin/bash

set -e

function install() {
  local user
  local home

  user=${SUDO_USER:-$USER}
  home=$(getent passwd "$user" | cut -d: -f6)

  apt-get update
  apt-get install -y git make

  pushd "$home" > /dev/null
    sudo -u "$user" mkdir -p Documents Downloads .tmp
    rm -rf .local/share/bash .bashrc .gitconfig .config/nvim .vimrc Documents/dotfiles
    sudo -u "$user" git clone https://github.com/ojroques/dotfiles.git Documents/dotfiles
  popd > /dev/null

  pushd "$home"/Documents/dotfiles > /dev/null
    make install-cli
    make clean
    sudo -u "$user" stow bash git nvim vim
  popd > /dev/null
}

install
