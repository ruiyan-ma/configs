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
sudo apt install -y build-essential gdb cgdb valgrind
sudo apt install -y python3 python3-pip
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

# nodejs
sudo curl -sL install-node.vercel.app/lts | sudo bash

# ranger
git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons

# copy files
git clone https://github.com/ruiyan-ma/configs.git
cp configs/ubuntu/zshrc ~/.zshrc
cp configs/ubuntu/vimrc ~/.vimrc
cp configs/ubuntu/rc.conf ~/.config/ranger/rc.conf
rm -rf configs

# formatter
sudo apt install -y astyle tidy
sudo npm install -g js-beautify
pip3 install --upgrade autopep8
pip3 install sqlparse
```

# cocnvim

```
CocInstall coc-word coc-tabnine coc-snippets coc-marketplace coc-lightbulb coc-html coc-xml coc-vimlsp coc-tsserver coc-sql coc-sh coc-pyright coc-pydocstring coc-json coc-java coc-css
```

## Ale & cocnvim

Add the following code to your coc configuration file:

Typing `:CocConfig` in vim to open coc configuration file.

```
{"diagnostic.displayByAle": true}
```
