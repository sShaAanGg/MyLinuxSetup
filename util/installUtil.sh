#!/bin/bash
set -eu

repo_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

# install rsync & vim
sudo apt update
sudo apt install -y rsync vim

# install vim config
cp -i "$repo_dir/config-files/.vimrc" ~/.vimrc
