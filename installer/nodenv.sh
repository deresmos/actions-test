#! /bin/bash


if type nodenv > /dev/null; then
  echo "nodenv already installed!"
  exit 0
fi

curl -fsSL https://raw.githubusercontent.com/nodenv/nodenv-installer/master/bin/nodenv-installer | bash
curl -fsSL https://raw.githubusercontent.com/nodenv/nodenv-installer/master/bin/nodenv-doctor | bash
eval "$(nodenv init -)"
git clone https://github.com/nodenv/nodenv-update.git "$(nodenv root)"/plugins/nodenv-update
git clone https://github.com/nodenv/nodenv-package-rehash.git "$(nodenv root)"/plugins/nodenv-package-rehash
