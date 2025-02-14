# Configs

Personal customized configuration files. 

```shell
git clone https://github.com/ruiyan-ma/configs.git ~/configs
```

## Homebrew

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

brew update
brew install git vim make cmake java python autojump ranger
brew install node tree gh bat tmux trash-cli rg fd tldr cloc

# curl
brew install curl
echo 'export PATH="/opt/homebrew/opt/curl/bin:$PATH"' >> ~/.zshrc
export LDFLAGS="-L/opt/homebrew/opt/curl/lib"
export CPPFLAGS="-I/opt/homebrew/opt/curl/include"

# fzf
# brew install fzf
# /opt/homebrew/opt/fzf/install

# universal-ctags for vim tagbar plugin
brew install --HEAD universal-ctags/universal-ctags/universal-ctags
```

## Shell

First download [Meslo Nerd Font](https://github.com/romkatv/powerlevel10k?tab=readme-ov-file#meslo-nerd-font-patched-for-powerlevel10k) and set terminal font to MesloLGS NF Regular 13. 

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
```

### coc-nvim

See `vim/README.md` file. 

## Ranger

```shell
mkdir -p ~/.config/ranger/plugins
cp ~/configs/ranger/rc.conf ~/.config/ranger
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
```

## Formatters

```shell
# C++ and java formatter
brew install astyle

# python
pip3 install --upgrade autopep8

# sql
pip3 install sqlparse
```
