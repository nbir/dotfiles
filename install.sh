# Homebrew
if ! command -v brew &> /dev/null
then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Homebrew taps
BREW_TAPS=(
    homebrew/cask
    homebrew/cask-versions
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
    colima
    cowsay
    csvkit
    derailed/k9s/k9s
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
    if ! brew ls --versions $formula &> /dev/null
    then
        brew install $formula
    fi
done

# Homebrew cask formulas
BREW_CASK_FROMULAS=(
    adobe-acrobat-reader
    balenaetcher
    caffeine
    dropbox
    firefox
    google-chrome
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
    if ! brew ls --versions --cask $formula &> /dev/null
    then
        brew install --cask $formula
    fi
done

# Homebrew cleanup
brew cleanup
rm -f -r /Library/Caches/Homebrew/*

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
