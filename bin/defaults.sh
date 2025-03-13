#!/bin/zsh
set -ue

#
# Reference: https://github.com/Fukkatsuso/dotfiles/blob/master/macos/defaults.sh
#
# =====
# Dock
# =====
#
defaults write com.apple.dock autohide -bool true
## Speed up the display
defaults write com.apple.dock autohide-time-modifier -int 0.1
defaults write com.apple.dock autohide-delay -float 0
## Size
defaults write com.apple.dock tilesize -int 20
defaults write com.apple.dock magnification -bool true
defaults write com.apple.dock largesize -int 65

#
# =======
# Finder
# =======
#
## Show list view
defaults write com.apple.Finder FXPreferredViewStyle Nlsv
defaults write com.apple.finder ShowPathbar -bool true

#
# =========
# Trackpad
# =========
#
## One finger force click
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerTapGesture -int 0
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

#
# ======
# Mouse
# ======
#
defaults write -g com.apple.mouse.scaling -float 1.5
defaults write -g com.apple.scrollwheel.scaling -float 0.75

#
# =========
# Keyboard
# =========
#
defaults write NSGlobalDomain KeyRepeat -int 2
defaults write NSGlobalDomain InitialKeyRepeat -int 15
keyboard_id="$(ioreg -c AppleEmbeddedKeyboard -r | grep -Eiw "VendorID|ProductID" | awk '{ print $4 }' | paste -s -d'-\n' -)-0"
defaults -currentHost write -g com.apple.keyboard.modifiermapping.${keyboard_id} -array-add "
<dict>
  <key>HIDKeyboardModifierMappingDst</key>\
  <integer>30064771300</integer>\
  <key>HIDKeyboardModifierMappingSrc</key>\
  <integer>30064771129</integer>\
</dict>
"

#
# =======
# Others
# =======
#
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

# ==============
# Apply changes
# ==============
#
for APPLICATION in \
  "Dock" \
  "Finder" \
  "SystemUIServer"; do
  killall "$APPLICATION" &> /dev/null || true
done

#
# ========
# Wrap up
# ========
#
unset APPLICATION
