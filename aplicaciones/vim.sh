apt-get install vim -y

sed -i '1i set number' /etc/vim/vimrc
sed -i '2i set mouse=a' /etc/vim/vimrc
sed -i '3i syntax enable' /etc/vim/vimrc
sed -i '4i set showcmd' /etc/vim/vimrc
sed -i '5i set showmach' /etc/vim/vimrc

apt-get install curl -y

curl -flo ~/.vim/autoload/plug.vim --create-dirs \https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

sed -i "6i call plug#begin('~/.vim/plugged')" /etc/vim/vimrcww:

sed -i "6i call plug#begin('~/.vim/plugged')" /etc/vim/vimrc


sed -i "6i call plug#begin('~/.vim/plugged')" /etc/vim/vimrc

sed -i "6i call plug#begin('~/.vim/plugged')" /etc/vim/vimrc




