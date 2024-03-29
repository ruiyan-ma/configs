FROM ubuntu:latest

WORKDIR /root

ENV LANG C.UTF-8
 
RUN apt clean
RUN apt update && apt upgrade -y

# apt install
RUN apt install -y zsh git vim curl wget \ 
    && apt install -y build-essential gdb cgdb valgrind clangd \ 
    && apt install -y python3 python3-pip \ 
    && apt install -y ranger autojump tree bat \
    && apt install -y zip unzip tar

# install cmake
# RUN apt install -y build-essential libssl-dev \
#     && wget http://www.cmake.org/files/v3.27/cmake-3.27.7.tar.gz \ 
#     && tar xf cmake-3.27.7.tar.gz \ 
#     && cd cmake-3.27.7 \ 
#     && ./configure \ 
#     && make \
#     && make install \
#     && cd .. \
#     && rm -rf cmake-3.27.7 cmake-3.27.7.tar.gz

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
