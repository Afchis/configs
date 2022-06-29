FROM nvidia/cuda:11.5.0-base-ubuntu20.04
ENV DEBIAN_FRONTEND noninteractive
ARG PYTHON_VERSION=3.8


### --> install python3.8 -->
RUN apt-get update &&\
    apt-get install -y python3.8\
                       python3-pip &&\
    apt-get clean &&\
    ln -s /usr/bin/python3.8 /usr/local/bin/python &&\
    ln -s /usr/bin/python3.8 /usr/local/bin/python3


### --> install {vim, tmux} and plugins -->
RUN apt-get install -y vim\
                       git\
                       curl\
                       tmux &&\
    apt install -y cmake\
                   vim-nox\
                   python3-dev\
                   build-essential &&\
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
              https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim &&\
    git clone https://github.com/Afchis/configs.git ~/Downloads/configs/ &&\
    mv ~/Downloads/configs/.vimrc ~/.vimrc &&\
    vim +'PlugInstall --sync' +qa &&\
    python ~/.vim/plugged/YouCompleteMe/install.py --force &&\
    mv ~/Downloads/configs/.tmux.conf
