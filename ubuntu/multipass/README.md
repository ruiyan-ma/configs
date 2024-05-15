# Multipass Ubuntu

Set up ubuntu in multipass container. 

Launch ubuntu virtual machine and open the shell. 

```shell
multipass launch lts --name primary --cpus 2 --disk 10G --memory 4G
multipass shell
```

apt update & upgrade. 

```shell
#!/bin/bash
sudo apt update -y && sudo apt upgrade -y
sudo snap refresh
```

Then reboot the virtual machine. 

```shell
# exit multipass shell
multipass stop primary
multipass shell
```

Install zsh. 

```shell
sudo apt install -y git vim curl wget make
sudo apt install -y build-essential g++ gdb cgdb valgrind clangd
sudo apt install -y python3 python3-pip
sudo apt install -y ranger tree
```

Install other things. 

```shell
# vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# ranger
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons

# copy files
git clone https://github.com/ruiyan-ma/configs.git
cp configs/ubuntu/vimrc ~/.vimrc
cp configs/ubuntu/rc.conf ~/.config/ranger/rc.conf
rm -rf configs
```

Copy the following to .bashrc

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

