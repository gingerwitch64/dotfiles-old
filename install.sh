#!/bin/bash
# Config install script
# Inspiration credit to aristonl at:
# https://github.com/aristonl/dotfiles/blob/main/install

echo "Creating directories and copying configs..."
mkdir ~/.config ~/.config/{alacritty,nvim}
cp ./alacritty.yml ~/.config/alacritty
cp ./init.vim ~/.config/nvim

echo "Installing vim-plug..."

# Credit to Ariston for this next part
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
nvim -c 'PlugInstall' \
	 -c 'qa!'

echo "...Done!"
