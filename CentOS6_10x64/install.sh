mkdir ~/.vimbackup
mkdir ~/.vimswap
mkdir ~/.vimundo

sudo yum update -y
sudo yum install git -y

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo set completion-ignore-case on | sudo tee -a /etc/inputrc
