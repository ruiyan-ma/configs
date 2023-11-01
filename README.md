# Configs

Personal customized configuration files. 

```shell
git clone https://github.com/ruiyan-ma/configs.git ~/configs
```

## Homebrew

```shell
sh ~/configs/homebrew/install.sh
```

## Shell

### Oh-my-zsh

```shell
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### zsh-autosuggestions & zsh-syntax-highlighting

```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

### Change Terminal Themes

```shell
git clone https://github.com/mbadolato/iTerm2-Color-Schemes.git
```

iTerm2-Color-Schemes => terminal => click on themes to open terminal

Recommend: Dracula, OneHalfDark

### Powerlevel10k

Go to [Powerlevel10k](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k) and install the recommend fonts. 

```shell
brew install powerlevel10k
echo "source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc
```

### Git

```shell
git config --global user.name "ruiyan-ma"
git config --global user.email "maruiyan17@gmail.com"
gh auth login
```

### zshrc & tmux

```shell
cp ~/configs/shell/zshrc ~/.zshrc
cp ~/configs/shell/tmux.conf ~/.tmux.conf
```

## Vim

### vim-plug

```shell
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### vimrc

```shell
cp ~/configs/vim/vimrc ~/.vimrc
cp ~/configs/vim/ideavimrc ~/.ideavimrc
```

### coc-nvim

See `~/configs/vim/README.md` file. 

## Ranger

```shell
mkdir -p ~/.config/ranger/plugins
cp ~/configs/ranger/rc.conf ~/.config/ranger
cp ~/configs/ranger/autojump.py ~/.config/ranger/plugins
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
```

## Formatters

```shell
sh ~/configs/formatter/install.sh
```
