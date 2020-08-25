#! /bin/bash


if type pyenv > /dev/null; then
  echo "pyenv already installed!"
  exit 0
fi

curl -sL https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
exec $SHELL
git clone https://github.com/massongit/pyenv-pip-update $(pyenv root)/plugins/pyenv-pip-update
