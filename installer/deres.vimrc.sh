#! /bin/bash

git clone https://github.com/deresmos/deres.vimrc ~/myself/deres.vimrc
cd ~/myself/deres.vimrc/setup-scripts
bash inst-cmigemo.sh
bash inst-pip-package.sh
bash inst-npm-package.sh
