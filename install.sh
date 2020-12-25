# Homebrew
# /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Homebrew taps
BREW_TAPS=(
    caskroom/cask
    caskroom/versions
    cockroachdb/tap
    hashicorp/tap
)

for tap in ${BREW_TAPS[@]}
do
    brew tap $tap
done

# Homebrew formulas
BREW_FROMULAS=(
    cockroach
    cowsay
    csvkit
    git
    go
    gradle
    grpc
    ffmpeg
    htop
    httpie
    jq
    krew
    kubectx
    kubernetes-cli
    minikube
    node
    postgresql
    protobuf
    pyenv
    q
    terraform
    the_silver_searcher
    thefuck
    tldr
    tmux
    tree
    watch
    wget
)

for formula in ${BREW_FROMULAS[@]}
do
    brew install $formula
done

# Homebrew cask formulas
BREW_CASK_FROMULAS=(
    adobe-acrobat-reader
    caffeine
    docker
    dropbox
    google-chrome
    google-drive
    iterm2
    karabiner-elements
    messenger
    raspberry-pi-imager
    spectacle
    spotify
    sublime-text
    visual-studio-code
    vlc
    zoom
)

for formula in ${BREW_CASK_FROMULAS[@]}
do
    brew install --cask $formula
done

# Homebrew cleanup
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*
