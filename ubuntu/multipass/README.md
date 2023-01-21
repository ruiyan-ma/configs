# Multipass Ubuntu

Set up ubuntu in multipass container. 

Launch ubuntu virtual machine and open the shell. 

```shell
multipass launch lts --name primary --cpus 2 --disk 10G --mem 4G
multipass shell
```

apt update & upgrade. 

```shell
#!/bin/bash
sudo -i
apt update -y && sudo apt upgrade -y
snap refresh
```

Then reboot the virtual machine. 

```shell
# exit multipass shell
multipass stop primary
multipass shell
```

Install zsh. 

```shell
sudo -i
apt install -y zsh git vim curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install other things. 

```shell
# shell
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sudo apt install -y gcc g++ gdb cgdb valgrind ranger autojump trash-cli tree bat

# vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
# nodejs
curl -sL install-node.vercel.app/lts | bash

# ranger
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons

# copy files
git clone https://github.com/ruiyan-ma/configs.git
cp configs/ubuntu/zshrc ~/.zshrc
cp configs/ubuntu/vimrc ~/.vimrc
cp configs/ubuntu/rc.conf ~/.config/ranger/rc.conf
rm -rf configs
```

