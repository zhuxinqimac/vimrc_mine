# vimrc_mine
My simple but powerful vimrc config.

## usage
Make dir:
```
cd ~
mkdir .vim
cd .vim
```
Clone recursively from this repository:
```
git clone --recurse-submodules https://github.com/zhuxinqimac/vimrc_mine.git .
```
Link config file to ~/.vimrc. Absolute paths may be required:
```
ln -s ~/.vim/vimrc ~/.vimrc
```

## tmux color problem
If color theme is not working well with tmux, try close all tmux sessions, 
and insert the following line to ~/.tmux.conf:
```
set -g default-terminal "screen-256color"
```
Then restart tmux.

## PS: bring vim nav keys to tmux:
Insert the following line to ~/.tmux.conf:
```
setw -g mode-keys vi
```

## PS: install ruby support in vim (for CommandT plugin)
Use the following line:
```
sudo apt-get install ruby vim-nox
```

## PS: if CommandT still doesn't work
Go to the CommandT plugin directory, type 
```
sudo apt-get install rake
rake make
```
If it shows error related to "ruby-dev", do
```
sudo apt-get install ruby-dev
```
Then rake make again.

## PS: syntastic support
For Python, you need to install flake8 first:
```
sudo apt-get install python3-flake8
```
check https://github.com/vim-syntastic/syntastic

## PS: vim-autoformat support
For Python, you need to install yapf first
```
conda install yapf
```
check https://github.com/Chiel92/vim-autoformat

## PS: For YouCompleteMe support
You should compile first
```
sudo apt install build-essential cmake3 python3-dev
cd ~/.vim/bundle/YouCompleteMe
python3 install.py
```
check https://github.com/Valloric/YouCompleteMe

## PS: setup bash vi mode
Put this line in ~/.inputrc
```
set editing-mode vi
```
