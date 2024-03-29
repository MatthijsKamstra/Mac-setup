#!/usr/bin/env bash

echo "🦊 Setup node.js via npm ..."

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "→ Installing homebrew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# node
# brew install node
brew install node

# global installs

# older install

# # npm install -g npm # ?
# npm install -g gitbook-cli
# npm install -g node-sass
# npm install -g node-sass-chokidar
# npm install -g nodemon
# npm install -g npm-run-all
# npm install -g svgo


# # npm install -g coffee-script
# # npm install -g gulp
# # npm install -g grunt-cli
# # npm install -g jshint
# # npm install -g less



npm install -g @angular/cli
npm install -g @lhci/cli
npm install -g @neutralinojs/neu
npm install -g docsify-cli
npm install -g firebase-tools
# npm install -g gitbook-cli
# npm install -g gulp-cli
# npm install -g lighthouse
# npm install -g node-sass-chokidar
# npm install -g node-sass
# npm install -g nodemon
# npm install -g npm-run-all
# npm install -g npm
# npm install -g qrcode
npm install -g svgo
npm install -g typescript
# npm install -g uglify-js




# Remove outdated versions from the cellar.
brew cleanup
