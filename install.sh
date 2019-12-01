apt update
   #above vim8 and vim8 can use python3
apt install git
apt install w3m  build-essential gcc gcc-g++
git clone https://github.com/ranger/ranger.git
apt install python3 python3-dev ctags make automkake
cp    .vimrc ~/.vimrc
cp -r .vim/.  ~/.vim
cd .vim/bundle/YouCompleteMe
install.py --java-completer --clang-complter --clangd-completer
