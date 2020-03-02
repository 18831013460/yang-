apt update
#above vim8 and vim8 can use python3
sudo apt install zsh vim w3m  build-essential gcc g++  python3 python3-dev  make  cmake ctags
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
pip install ranger 
cp    ~/yang-/.vimrc ~/
cp -r ~/yang-/.vim/.vim  ~/
cd .vim/bundle/YouCompleteMe
python3 install.py --java-completer --clang-completer --clang-completer
