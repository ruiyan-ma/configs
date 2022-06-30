# install homebrew and all other tools

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

brew update
brew tap homebrew/cask
brew tap homebrew/cask-versions
brew install git vim java python fd tldr bat
brew install autojump rg nnn ranger tmux
brew install shellcheck gh cowsay trash node tree

# curl
brew install curl
echo 'export PATH="/opt/homebrew/opt/curl/bin:$PATH"' >> ~/.zshrc
export LDFLAGS="-L/opt/homebrew/opt/curl/lib"
export CPPFLAGS="-I/opt/homebrew/opt/curl/include"

# fzf
brew install fzf
/opt/homebrew/opt/fzf/install

# powerlevel10k
brew install romkatv/powerlevel10k/powerlevel10k
echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc

# universal-ctags for vim tagbar plugin
brew install --HEAD universal-ctags/universal-ctags/universal-ctags

# gtop and htop
brew install gtop htop

# maven and gradle
brew install maven gradle

# count lines of code
brew install cloc
