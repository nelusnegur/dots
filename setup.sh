#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset



function setup_vim() {
	echo "Setting up vim..."
	cp -a editor/vim/. ~/
}

function setup_font() {
	# Installing Iosevka font (https://github.com/be5invis/Iosevka)

	echo "Installing Iosevka font..."
	brew tap homebrew/cask-fonts
	brew install --cask font-iosevka
}


echo "Setting up the environment..."
setup_vim()
setup_font()
echo "Done!"

