#!/bin/bash

set -e

USER=${SUDO_USER:-root}
HOME=$(getent passwd "$USER" | cut -d: -f6)

function update() {
  apt-get update
  apt-get upgrade -y
}

function install() {
  apt-get install -y git sudo
  rm -rf "$HOME"/dotfiles
  sudo -u "$USER" git clone https://github.com/ojroques/dotfiles.git "$HOME"/dotfiles
  pushd "$HOME"/dotfiles
    echo "1" | ./install.sh
  popd
}

function config() {
  sudo -u "$USER" mkdir -p "$HOME"/Documents "$HOME"/Downloads "$HOME"/.tmp
  rm -rf \
    "$HOME"/.local/share/bash \
    "$HOME"/.bashrc \
    "$HOME"/.gitconfig \
    "$HOME"/.config/nvim \
    "$HOME"/.vimrc
  pushd "$HOME"/dotfiles
    sudo -u "$USER" stow bash git nvim vim
  popd
}

update
install
config
