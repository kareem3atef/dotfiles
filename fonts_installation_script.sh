#!/bin/sh
# Copy any font (folder name) to the $font variable from here:
# https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts

font=JetBrainsMono
fontpath="$HOME/.local/share/fonts"
version="3.3.0"

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v"$version"/$font.zip 
mkdir -p "$fontpath"
unzip $font.zip -d "$fontpath"
rm "$fontpath"/*Windows*
rm $font.zip

wget -P $fontpath https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIcons-Regular.ttf
wget -P $fontpath https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsOutlined-Regular.otf
wget -P $fontpath https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsRound-Regular.otf
wget -P $fontpath https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsSharp-Regular.otf
wget -P $fontpath https://github.com/google/material-design-icons/raw/refs/heads/master/font/MaterialIconsTwoTone-Regular.otf
wget -P $fontpath https://github.com/kareem3atef/dotfiles/raw/refs/heads/master/fonts/Font%20Awesome%206%20Brands-Regular-400.otf
wget -P $fontpath https://github.com/kareem3atef/dotfiles/raw/refs/heads/master/fonts/Font%20Awesome%206%20Free-Regular-400.otf
wget -P $fontpath https://github.com/kareem3atef/dotfiles/raw/refs/heads/master/fonts/Font%20Awesome%206%20Free-Solid-900.otf
wget -P $fontpath https://github.com/kareem3atef/dotfiles/raw/refs/heads/master/fonts/feather.tff
wget -P $fontpath https://github.com/kareem3atef/dotfiles/raw/refs/heads/master/fonts/icomoon.ttf

wget -P $fontpath https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
wget -P $fontpath https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
wget -P $fontpath https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
wget -P $fontpath https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf

fc-cache -fv


