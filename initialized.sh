# Update
sudo apt update
sudo apt upgrade

# git install
sudo apt install git

# vim install
sudo apt remove --purge vim vim-runtime vim-common
sudo apt install -y git build-essential ncurses-dev lua5.2 lua5.2-dev luajit python-dev python3-dev ruby-dev
cd /opt/
sudo git clone https://github.com/vim/vim
cd vim/
sudo ./configure --with-features=huge --enable-multibyte --enable-luainterp=dynamic --enable-gpm --enable-cscope --enable-fontset --enable-fail-if-missing --prefix=/usr/local --enable-pythoninterp=dynamic --enable-python3interp=dynamic --enable-rubyinterp=dynamic
sudo make
sudo make install
vim --version

# mkdir github
mkdir ~/github

# install dotfiles
cd ~/github
git clone git@github.com:cnmnroll/dotfiles.git
cd dotfiles
source ./initialized.sh
