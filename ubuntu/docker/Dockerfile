FROM ubuntu:latest

WORKDIR /root

ENV LANG C.UTF-8
 
RUN apt clean
RUN apt update && apt upgrade -y

# apt install
RUN apt install -y zsh git vim curl \ 
    && apt install -y build-essential gdb cgdb valgrind clangd \ 
    && apt install -y python3 python3-pip \ 
    && apt install -y default-jdk \ 
    && apt install -y ranger autojump trash-cli tree bat

# oh-my-zsh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# auto-suggestion & highlighting
RUN git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions \ 
    && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# vim
RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# ranger
RUN git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons

# copy config files
RUN git clone https://github.com/ruiyan-ma/configs.git \
    && cp configs/ubuntu/zshrc ~/.zshrc \
    && cp configs/ubuntu/vimrc ~/.vimrc \
    && cp configs/ubuntu/rc.conf ~/.config/ranger/rc.conf \
    && rm -rf configs
