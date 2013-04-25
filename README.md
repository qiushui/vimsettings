# Introduction
This project sync my vim plugins, color schemes and settings

## How to Setup

    ln -s vimrc ~/.vimrc

## How to sync plugins 

### Add submodules to your vim
    git submodule add https://github.com/Lokaltog/vim-powerline.git
    git add .
    git commit -m 'adding vim powerline submodule'

### Syncing plugins into your `.vim/bundle with git submodule
    git submodule init
    git submodule update
    
## Upgrading a plugin bundle
    cd ~/.vim/bundle/vim-powerline
    git pull origin master

## Upgrading all bundled plugins

    git submodule foreach git pull origin master
