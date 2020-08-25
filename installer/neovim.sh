#! /bin/bash


if type nvim > /dev/null; then
  echo "neovim already installed!"
  exit 0
fi

git clone https://github.com/neovim/neovim ~/softs/neovim
cd ~/softs/neovim
make CMAKE_BUILD_TYPE=Release
sudo make install
