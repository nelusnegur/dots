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

	echo "Installing tmux plugin manager..."
	git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
}

function set_up_terminal() {
	cp -a shell/alacritty/alacritty.yml ~/.config/alacritty
}

function set_up_shell() {
	set_up_zshell()
	set_up_tmux()
	set_up_terminal()
}

function set_up_git() {
	echo "Setting up git..."
	cp -a git/.gitconfig ~/
}


echo "Setting up the environment..."

set_up_vim()
set_up_font()
set_up_shell()
set_up_git()


echo "Done!"
