#! /bin/bash


if type pyenv > /dev/null; then
  echo "pyenv already installed!"
  exit 0
fi

curl -sL https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
git clone https://github.com/massongit/pyenv-pip-update $(pyenv root)/plugins/pyenv-pip-update
