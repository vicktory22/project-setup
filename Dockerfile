FROM node:slim

RUN apt update && apt install -y git wget procps zsh

# terminal colors with xterm
ENV TERM xterm

# set the zsh theme
ENV ZSH_THEME agnoster

# run the installation script
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true
