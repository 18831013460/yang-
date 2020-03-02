apt update
#above vim8 and vim8 can use python3
apt install zsh
pip install ranger-fm
apt install  vim
apt install w3m  build-essential gcc gcc-g++

apt install python3 python3-dev ctags make automkake cmake
cp    ~/yang-/.vimrc ~/
cp -r ~/yang-/.vim/.vim  ~/
cd .vim/bundle/YouCompleteMe
install.py --java-completer --clang-completer --clang-completer
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
