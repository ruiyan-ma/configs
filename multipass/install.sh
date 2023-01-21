#!/bin/bash
sudo apt update -y && sudo apt upgrade -y
sudo snap refresh

# shell
sudo apt install -y zsh git vim curl
echo y | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sudo apt install -y gcc g++ gdb cgdb valgrind ranger autojump trash-cli tree bat

# copy files
git clone https://github.com/ruiyan-ma/configs.git
cp configs/multipass/zshrc ~/.zshrc
cp configs/multipass/vimrc ~/.vimrc
mkdir -p ~/.config/ranger
cp configs/multipass/rc.conf ~/.config/ranger/rc.conf
rm -rf configs

# vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# ranger
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
