#! /bin/bash


if type homebrew > /dev/null; then
  echo "homebrew already installed!"
  exit 0
fi

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

if type homebrew > /dev/null; then
  echo ">>> homebrew installed!"
  brew install cmake
  exit 0
fi
