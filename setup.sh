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

function set_up_zshell() {
	echo "Setting up shell..."
	echo "Installing zsh..."

	# Installing oh-my-zsh (https://ohmyz.sh/)
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

	cp -a shell/zsh/themes/. ~/.oh-my-zsh/custom/themes
}

function set_up_tmux() {
	echo "Setting up tmux..."
	brew install tmux

	cp -a shell/tmux/. ~/
}

function set_up_shell() {
	set_up_zshell()
	set_up_tmux()
}


echo "Setting up the environment..."

set_up_vim()
set_up_font()
set_up_shell()

echo "Done!"
