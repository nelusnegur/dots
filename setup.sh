#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset



function set_up_vim() {
	echo "Setting up vim..."
	cp -a editor/vim/. ~/
}

function set_up_font() {
	# Installing Iosevka font (https://github.com/be5invis/Iosevka)

	echo "Installing Iosevka font..."
	brew tap homebrew/cask-fonts
	brew install --cask font-iosevka
}


echo "Setting up the environment..."
set_up_vim()
set_up_font()
echo "Done!"

