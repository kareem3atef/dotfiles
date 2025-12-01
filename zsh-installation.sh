#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

sudo apt update && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y

# Install Zsh
if ! command -v zsh >/dev/null 2>&1; then
    echo "Installing Zsh..."
    sudo apt update && sudo apt install -y zsh
else
    echo "Zsh is already installed."
fi

# Install Oh My Zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Installing Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" --unattended
else
    echo "Oh My Zsh is already installed."
fi

# Clone Zsh Syntax Highlighting plugin
ZSH_CUSTOM=${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}
if [ ! -d "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting" ]; then
    echo "Cloning Zsh Syntax Highlighting plugin..."
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
else
    echo "Zsh Syntax Highlighting plugin is already cloned."
fi

# Clone Zsh Autosuggestions plugin
if [ ! -d "$ZSH_CUSTOM/plugins/zsh-autosuggestions" ]; then
    echo "Cloning Zsh Autosuggestions plugin..."
    git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
else
    echo "Zsh Autosuggestions plugin is already cloned."
fi

# Clone Powerlevel10k theme
if [ ! -d "$ZSH_CUSTOM/themes/powerlevel10k" ]; then
    echo "Cloning Powerlevel10k theme..."
    git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
else
    echo "Powerlevel10k theme is already cloned."
fi

# Set Zsh as default shell
if [ "$SHELL" != "$(which zsh)" ]; then
    echo "Setting Zsh as default shell..."
    chsh -s $(which zsh)
else
    echo "Zsh is already the default shell."
fi

# Update .zshrc to include plugins and theme
ZSHRC="$HOME/.zshrc"
if ! grep -q "^ZSH_THEME=\"powerlevel10k/powerlevel10k\"" "$ZSHRC"; then
    echo "Updating .zshrc with theme and plugins..."
    sed -i "s/^ZSH_THEME=.*/ZSH_THEME=\"powerlevel10k\/powerlevel10k\"/" "$ZSHRC"
fi

if ! grep -q "plugins=(.*zsh-autosuggestions.*zsh-syntax-highlighting.*)" "$ZSHRC"; then
    sed -i "/^plugins=/c\plugins=(git zsh-autosuggestions zsh-syntax-highlighting)" "$ZSHRC"
fi

echo "Installation and setup completed! Restart your terminal or run 'zsh' to use Zsh."


# installing kitty terminal
if [ ! -d "$HOME/.local/kitty.app/bin" ]; then
    echo "Installing Oh My kitty..."
    curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin
    sudo ln -s $HOME/.local/kitty.app/bin/kitty /usr/local/bin/kitty
    sudo ln -s $HOME/.local/kitty.app/bin/kitten /usr/local/bin/kitten
else
    echo "kitty is already installed."
fi


# installing brew.sh
if [ ! -d "/home/linuxbrew/" ]; then
    echo "install brew.sh"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo "# brew env" >> $HOME/.zshrc
    echo "PATH=$PATH:/home/linuxbrew/.linuxbrew/bin" >> $HOME/.zshrc
    echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> $HOME/.zshrc 
    echo "" >> $HOME/.zshrc
    echo "" >> $HOME/.zshrc
    sudo apt-get update && sudo apt-get install build-essential
    source $HOME/.zshrc
    brew install gcc
    brew install btop
    brew install lf
    brew install ctpv
    brew install bat
    brew install gdrive
    brew install fzf
else
    echo "brew is already installed."
fi


# ctpv post installation
mkdir -p $HOME/.cache/ctpv
echo "ctpv env" >> $HOME/.zshrc
echo "export CTPV_WORKDIR=$HOME/.cache/ctpv" >> $HOME/.zshrc
echo "export CTPV_CLEANUP=1" >> $HOME/.zshrc
echo "" >> $HOME/.zshrc
echo "" >> $HOME/.zshrc
source $HOME/.zshrc

# installing picom dependencies
sudo apt install -y ffmpeg libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libxcb-glx0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev  libpcre2-dev  libevdev-dev uthash-dev libev-dev libx11-xcb-dev



sudo apt install -y meson ninja-build libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf libxcb-xrm0 libxcb-xrm-dev automake

# # installing i3 and its environment
sudo apt install -y i3 rofi feh lxappearance thunar dunst polybar i3lock-fancy vim vim-gtk3 xautolock ffmpeg playerctl meson xdotool xdo lsd 

