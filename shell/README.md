## Install Shell

### Install Oh-my-zsh

```shell
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### Install zsh-autosuggestions & zsh-syntax-highlighting

```shell
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

### Change Themes

```shell
git clone https://github.com/mbadolato/iTerm2-Color-Schemes.git
```

iTerm2-Color-Schemes => terminal => click on themes to open terminal

Recommend: Dracula, OneHalfDark

### Install Powerlevel10k

Go to [Powerlevel10k](https://github.com/romkatv/powerlevel10k#meslo-nerd-font-patched-for-powerlevel10k), use homebrew to [install it](https://github.com/romkatv/powerlevel10k#getting-started).

### Set Git

```shell
git config --global user.name "name"
git config --global user.email "email"
gh auth login
```

## Files

### zshrc

The zshrc file is the backup of ~/.zshrc

### tmux.conf

The tmux.conf is the backup of ~/.tmux.conf
