#! /bin/bash


if type brew > /dev/null; then
  echo "homebrew already installed!"
  exit 0
fi

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

if type brew > /dev/null; then
  echo ">>> homebrew installed!"
  exit 0
fi
