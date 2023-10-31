# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

brew update
brew tap homebrew/cask
brew tap homebrew/cask-versions
brew install git vim java python fd bat
brew install autojump rg ranger tmux
brew install gh trash-cli node tree

# curl
brew install curl
echo 'export PATH="/opt/homebrew/opt/curl/bin:$PATH"' >> ~/.zshrc
export LDFLAGS="-L/opt/homebrew/opt/curl/lib"
export CPPFLAGS="-I/opt/homebrew/opt/curl/include"

# fzf
brew install fzf
/opt/homebrew/opt/fzf/install

# universal-ctags for vim tagbar plugin
brew install --HEAD universal-ctags/universal-ctags/universal-ctags

# maven and gradle
brew install maven gradle

# count lines of code
brew install cloc

# multipass ubuntu virtual machine
# brew install multipass

# mongodb
brew tap mongodb/brew
brew install mongodb-community
