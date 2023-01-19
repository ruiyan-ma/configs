# Multipass Ubuntu

Set up ubuntu in multipass container. 

```shell
sudo apt update && sudo apt upgrade -y
sudo snap refresh

sudo apt install zsh git curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

sudo apt install gcc valgrind ranger autojump trash-cli tree bat
```

## zshrc

```shell
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	autojump
	zsh-autosuggestions
	zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias python=python3
# alias for ls
alias ll="ls -l"
alias la="ls -a"
# ask before overwrite
alias mv="mv -i"
# create intermediate directories as required
alias mkdir="mkdir -p"
# set max display depth
alias t2="tree -L 2"
alias t3="tree -L 3"
# use trash-cli to replace rm
alias rm=trash
# alias for bat
alias bat=batcat
# exit ranger but stay in the current directory
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

# Export vim as the default editor
export EDITOR='vim'

# Use vim mode in the shell
bindkey -v
```

## Ranger

add the following code into rc.conf

```shell
# add icons
default_linemode devicons

# use two columns
set column_ratios 1,1

# bind hotkey for mkdir
# map mk console mkdir%space

# bind hotkey for create new file
# map i console edit%space

# bind hotkey for trash-cli, change hotkey for cut
map DD shell trash %s
map ud shell trash-restore
```

then run

```shell
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
```

## vim

```shell
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

```shell
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-Plug Manager
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'

" color themes
Plug 'sonph/onehalf', {'rtp': 'vim/'}

Plug 'tpope/vim-commentary'

Plug 'jiangmiao/auto-pairs'

Plug '907th/vim-auto-save'
let g:auto_save=1

Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
nmap <F2> :NERDTreeToggle<CR>
" exit vim if NERDTree is the only window remaining in the only tab
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists(
            \ 'b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" ---------- airline ----------
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1

" color themes
let g:airline_theme='powerlineish'

" tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'

" Manage buffer tab
nmap <C-H> :bp<CR>
nmap <C-L> :bn<CR>
" ---------- airline ----------

" Initialize plugin system
call plug#end()



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" use vim mode
set nocompatible

"basic
syntax on
set number
set relativenumber
set mouse+=a
set clipboard=unnamed
set backspace=indent,eol,start
set encoding=utf8
set scrolloff=6

" set color theme
set t_Co=256
set cursorline
set background=dark
colorscheme onehalfdark

" Cursor settings:
"  1 -> blinking block
"  2 -> solid block
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar
let &t_EI.="\e[2 q" "EI = NORMAL mode
let &t_SI.="\e[6 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode

" search
set ignorecase
set smartcase
set incsearch
set hlsearch

" set tab and indent
set tabstop=4  " each tab is 4 spaces
set expandtab  " use spaces instead of tabs
set autoindent
set smartindent
set shiftwidth=4
set softtabstop=4

" no annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

au Filetype python set textwidth=79
au Filetype python set fileformat=unix

au Filetype java set textwidth=79
au Filetype java set fileformat=unix
```

