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

## PS: install ruby support in vim
Use the following line:
```
sudo apt-get install ruby vim-nox
```
