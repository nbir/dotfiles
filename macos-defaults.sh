# https://macos-defaults.com/

# Dock

# Put the Dock on the right of the screen
defaults write com.apple.dock orientation -string right

# Dock icon size of 32 pixels.
defaults write com.apple.dock tilesize -int 32

# Autohide the Dock when the mouse is out
defaults write com.apple.dock autohide -bool true

# Do not display recent apps in the Dock
defaults write com.apple.dock show-recents -bool false

killall Dock

# Finder

# Display the Finder "Quit" option
defaults write com.apple.finder QuitMenuItem -bool true

# Use list view in all Finder windows by default
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

# Show all file extensions inside the Finder
defaults write NSGlobalDomain AppleShowAllExtensions -bool true && killall Finder

# Always show scrollbars
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"
# Possible values: `WhenScrolling`, `Automatic` and `Always`

killall Finder

# Miscellaneous

# Set highlight color to green
defaults write NSGlobalDomain AppleHighlightColor -string "0.764700 0.976500 0.568600"

# Disable press-and-hold for keys in favor of key repeat.
defaults write -g ApplePressAndHoldEnabled -bool false

# Reduce key repeat delay to 15ms
defaults write NSGlobalDomain KeyRepeat -int 1

# Reduce delay until key repeat to 150ms
defaults write NSGlobalDomain InitialKeyRepeat -int 10

# Disable the charging sound
defaults write com.apple.PowerChime ChimeOnNoHardware -bool true

killall PowerChime
