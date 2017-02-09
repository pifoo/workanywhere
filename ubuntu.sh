#sudo sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
#sudo apt-get install software-properties-common -y
#sudo apt-add-repository ppa:git-core/ppa -y
#sudo add-apt-repository ppa:pkg-vim/vim-daily
sudo sed -i 's/ppa.launchpad.net/launchpad.proxy.ustclug.org/g' /etc/apt/sources.list.d/git-core-ppa-trusty.list
sudo apt-get update
#sudo apt-get install git -y
sudo apt-get upgrade vim -y
#sudo apt-get autoremove -y

if ! [ -f ~/.vim/autoload/plug.vim ]; then
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim;
fi 
[ -f ~/.vimrc ] &&  mv ~/.vimrc ~/.vimrc.old 
ln -s $(realpath ./vimrc) ~/.vimrc && echo "~/.vimrc copied"
vim -c ":PlugInstall"




