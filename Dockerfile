FROM afchi:base
ENV DEBIAN_FRONTEND noninteractive
ARG PYTHON_VERSION=3.8


### --> install {vim, tmux} and plugins -->
RUN apt-get install -y vim\
                       git\
                       curl\
                       tmux\
                       cmake\
                       vim-nox\
                       python3-dev\
                       build-essential &&\
    apt-get clean &&\
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
              https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim &&\
    git clone https://github.com/Afchis/configs.git ~/Downloads/configs/ &&\
    mv ~/Downloads/configs/.vimrc ~/.vimrc &&\
    vim -E -s -u "$HOME/.vimrc" +PlugInstall +visual +qall &&\
    python ~/.vim/plugged/YouCompleteMe/install.py --force &&\
    mv ~/Downloads/configs/.tmux.conf ~/.tmux.conf &&\
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm &&\
    git clone https://github.com/tmux-plugins/tmux-sensible ~/.tmux/plugins/tmux-sensible &&\
    git clone https://github.com/christoomey/vim-tmux-navigator.git ~/.tmux/plugins/vim-tmux-navigator &&\
    echo "alias tmux='TERM=term-256color-bce tmux'" >> ~/.bashrc


RUN pip install torch=1.12

