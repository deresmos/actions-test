if type brew > /dev/null; then
  echo "Install homebrew packages"
  brew install \
    wget \
    imagemagick \
    cmake

  exit 0
fi
