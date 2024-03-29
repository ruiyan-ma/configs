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
sudo apt install -y zsh git vim curl
sudo apt install -y build-essential gdb cgdb valgrind clangd
sudo apt install -y python3 python3-pip
sudo apt install -y default-jdk
sudo apt install -y ranger autojump trash-cli tree bat

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install other things. 

```shell
# shell
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# ranger
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons

# copy files
git clone https://github.com/ruiyan-ma/configs.git
cp configs/ubuntu/zshrc ~/.zshrc
cp configs/ubuntu/vimrc ~/.vimrc
cp configs/ubuntu/rc.conf ~/.config/ranger/rc.conf
rm -rf configs
```
