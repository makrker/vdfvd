#!/bin/bash

chsh -s /bin/bash

osascript -e 'tell application "System Preferences" to quit'
sudo -v
cd || exit #
mkdir Screenshot
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
 brew install --cask hyper
 brew install git
 brew install gcc
 brew tap jandedobbeleer/oh-my-posh
 brew install oh-my-posh
 brew install --cask librewolf
 brew install --cask visual-studio-code
 rm -rf .hyper.js
git clone https://github.com/makrker/based.git 
cd based || exit 
mv hyper.js /Users/"$USER"/.hyper.js 
sudo mv Firacode.ttf /Library/Fonts/
osascript -e 'tell application "Finder" to set desktop picture to POSIX file "~/based/wallpaper.jpg"'
 echo "eval "$(oh-my-posh --init --shell bash --config ~/based/asees.omp.json) " " > .zshrc
 defaults write com.apple.dock "orientation" -string "bottom" && killall Dock
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true
defaults write com.apple.dock "tilesize" -int "25" && killall Dock
defaults write com.apple.screencapture "disable-shadow" -bool "true"
defaults write com.apple.screencapture "type" -string "jpg"
defaults write NSGlobalDomain "NSDocumentSaveNewDocumentsToCloud" -bool "false"
defaults write com.apple.menuextra.clock "FlashDateSeparators" -bool "true" && killall SystemUIServer
defaults write com.apple.screencapture "include-date" -bool "true"
sudo nvram SystemAudioVolume=" "
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false
sudo pmset -b sleep 5
sudo pmset -c sleep 50
defaults write com.apple.screencapture location -string "${HOME}/Screenshot"
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write com.apple.frameworks.diskimages skip-verify -bool true
defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true
defaults write com.apple.dock expose-animation-duration -float 0.1
defaults write com.apple.Safari ShowFullURLInSmartSearchField -bool true
defaults write com.apple.Safari ShowSidebarInTopSites -bool false
defaults write com.apple.Safari WarnAboutFraudulentWebsites -bool true
defaults write com.apple.Safari WebKitJavaScriptCanOpenWindowsAutomatically -bool false
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2JavaScriptCanOpenWindowsAutomatically -bool false
defaults write com.apple.Safari SendDoNotTrackHTTPHeader -bool true
defaults write com.apple.Safari InstallExtensionUpdatesAutomatically -bool true
defaults write NSGlobalDomain AppleFontSmoothing -int 1
sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true
sudo reboot
