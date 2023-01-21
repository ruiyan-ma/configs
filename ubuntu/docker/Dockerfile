FROM ubuntu:latest

WORKDIR /root

ENV LANG C.UTF-8
 
RUN apt clean
RUN apt update && apt upgrade -y

# shell
RUN apt install -y zsh git vim curl \
    && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" \ 
    && git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions \ 
    && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting \ 
    && apt install -y gcc g++ gdb cgdb valgrind ranger autojump trash-cli tree bat

# vim
RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# nodejs
RUN curl -sL install-node.vercel.app/lts | bash

# ranger
RUN git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons

# copy config files
RUN git clone https://github.com/ruiyan-ma/configs.git \
    && cp configs/ubuntu/zshrc ~/.zshrc \
    && cp configs/ubuntu/vimrc ~/.vimrc \
    && cp configs/ubuntu/rc.conf ~/.config/ranger/rc.conf \
    && rm -rf configs
