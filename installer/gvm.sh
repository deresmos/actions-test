#! /bin/bash


if type gvm > /dev/null; then
  echo "gvm already installed!"
  exit 0
fi

bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
exec $SHELL
