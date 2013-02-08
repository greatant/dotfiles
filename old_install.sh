#!/bin/bash
################
# install.sh
# This script creates symlinks from the home directory
# to any desired dotfiles in ~/.dotfiles_sync
################

dir=~/.dotfiles_sync
bakdir=~/.dotfiles_bak
files=""

################

# create dotfiles_bak in homedir
echo "Creating $bakdir for backup of any existing dotfiles in ~"
mkdir -p $bakdir
echo "...done"

# change to dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $bakdir"
    mv ~/.$file ~/.dotfiles_bak/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done
