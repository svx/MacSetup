#!/bin/bash

# ------- SSH Key for GitHub -------
echo "Creating an SSH key for you... 🔐"
echo -n 'Mail: '
read -r email
ssh-keygen -t ed25519 -C "$email"

echo "Please add this public key to GitHub 👻"
cat ~/.ssh/id_ed25519
open -a Safari https://github.com/settings/keys
read -pr "Press [Enter] key after this... ⌨️"
# ------- SSH Key for GitHub -------

# ------- Xcode -------
echo "Installing xcode-stuff 👨‍💻"
xcode-select --install
# ------- Xcode -------

# ------- Homebrew -------
# Check for Homebrew,
# Install if we don't have it
if test ! "$(which brew)"; then
  echo "Installing homebrew... 🍺"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  # shellcheck disable=SC2016
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/"$USER"/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Update homebrew recipes
echo "Updating homebrew... 🆕"
brew update
# ------- Homebrew -------

# ------- Git -------
echo "Installing Git... 🦸‍♂️"
brew install git

echo "Git config 🙋‍♂️ - Enter your data and press Enter!"


echo -n 'Username: '
read -r username
git config --global user.name "$username"

echo -n 'Mail: '
read -r mail
git config --global user.email "$mail"
# ------- Git -------

echo "Cleaning up brew 🧹"
brew cleanup

# ------- Apps -------
echo "Installing apps with homebrew 🧙‍♂️"
apps=(
  git
  github/gh/gh
  httpie
  node@16
  yarn
)

# Install apps
brew install "${apps[@]}"

# ------- Cask Apps -------
echo "Installing homebrew cask 🧙‍♂️"
brew install homebrew/cask

casks=(
  docker
  visual-studio-code
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps with Cask... ⏳"
brew install --cask --appdir="/Applications" "${casks[@]}"

brew cleanup
# ------- Apps -------

killall Finder

