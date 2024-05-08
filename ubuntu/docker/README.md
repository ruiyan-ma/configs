# Docker

Set up ubuntu container using docker.

```shell
docker build -t ubuntu:basic .
docker run -itd -v /Users/ruiyan:/root/home --name ubuntu ubuntu:basic
docker exec -it ubuntu /bin/bash
```

Run the following command: 

```shell
apt update
apt upgrade

# apt install
apt install -y zsh git vim curl wget
apt install -y build-essential gdb cgdb valgrind clangd
apt install -y python3 python3-pip
apt install -y ranger tree
apt install -y zip unzip tar

# install cmake
# apt install -y build-essential libssl-dev
# wget http://www.cmake.org/files/v3.27/cmake-3.27.7.tar.gz
# tar xf cmake-3.27.7.tar.gz
# cd cmake-3.27.7
# ./configure
# make
# make install
# cd ..
# rm -rf cmake-3.27.7 cmake-3.27.7.tar.gz

# vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# ranger
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons

# copy config files
git clone https://github.com/ruiyan-ma/configs.git
cp configs/ubuntu/vimrc ~/.vimrc
cp configs/ubuntu/rc.conf ~/.config/ranger/rc.conf
rm -rf configs
```

Copy the following into bashrc:

```shell
# ask before overwrite
alias mv="mv -i"

# create intermediate directories as required
alias mkdir="mkdir -p"

# set max display depth
alias t2="tree -L 2"
alias t3="tree -L 3"

# exit ranger but stay in the current directory
alias ranger='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

# Export vim as the default editor
export EDITOR='vim'
```

