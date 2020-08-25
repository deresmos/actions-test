if type brew > /dev/null; then
  echo "Install homebrew packages"
  brew install \
    wget \
    imagemagick \
    # neovim
    pkg-config \
    automake \
    cmake

  exit 0
fi
