if type brew > /dev/null; then
  echo "Install homebrew packages"
  brew install \
    wget \
    imagemagick \
    terminal-notifier \
    pt \
    ag \
    direnv \
    # neovim
    pkg-config \
    automake \
    cmake

  brew install --HEAD universal-ctags/universal-ctags/universal-ctags

  exit 0
fi
