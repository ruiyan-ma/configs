# clone project to home
git clone https://github.com/ruiyan-ma/configs.git ~/configs

# homebrew
sh ~/configs/homebrew/install.sh

# shell
sh ~/configs/shell/install.sh
cp ~/configs/shell/zshrc ~/.zshrc
cp ~/configs/shell/tmux.conf ~/.tmux.conf

# vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
cp ~/configs/vim/vimrc ~/.vimrc
cp ~/configs/vim/ideavimrc ~/.ideavimrc

# ranger
mkdir -p ~/.config/ranger/plugins
cp ~/configs/ranger/rc.conf ~/.config/ranger
cp ~/configs/ranger/autojump.py ~/.config/ranger/plugins
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons

# formatter
sh ~/configs/formatter/install.sh

# delete project
rm -rf ~/configs