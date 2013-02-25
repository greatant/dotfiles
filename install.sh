#!/bin/bash
################
# install.sh
# This script creates symlinks from the home directory
# to any desired dotfiles in ~/.dotfiles_sync
################


#rm $HOME/.bashrc
#rm $HOME/.bash_profile
#rm $HOME/.bash_logout

ln -s $HOME/.dotfiles_sync/.bashrc $HOME/.bashrc
ln -s $HOME/.dotfiles_sync/.bash_logout $HOME/.bash_logout
ln -s $HOME/.dotfiles_sync/.bash_profile $HOME/.bash_profile
ln -s $HOME/.dotfiles_sync/.xinitrc $HOME/.xinitrc
ln -s $HOME/.dotfiles_sync/.Xresources $HOME/.Xresources

ln -s $HOME/.dotfiles_sync/fvwm $XDG_CONFIG_HOME/fvwm
ln -s $HOME/.dotfiles_sync/user-dirs.dirs $XDG_CONFIG_HOME/user-dirs.dirs
ln -s $HOME/.dotfiles_sync/bashrun $XDG_CONFIG_HOME/bashrun
ln -s $HOME/.dotfiles_sync/mplayer $XDG_CONFIG_HOME/mplayer
ln -s $HOME/.dotfiles_sync/mpd.conf $XDG_CONFIG_HOME/mpd.conf
ln -s $HOME/.dotfiles_sync/stalonetrayrc $XDG_CONFIG_HOME/stalonetrayrc
ln -s $HOME/.dotfiles_sync/transmission/settings.json $XDG_CONFIG_HOME/transmission/settings.json

ln -s $HOME/.dotfiles_sync/sunflower/accelerators.json $XDG_CONFIG_HOME/sunflower/accelerators.json
ln -s $HOME/.dotfiles_sync/sunflower/associations.json $XDG_CONFIG_HOME/sunflower/associations.jsno
ln -s $HOME/.dotfiles_sync/sunflower/bookmarks.json $XDG_CONFIG_HOME/sunflower/bookmarks.json
ln -s $HOME/.dotfiles_sync/sunflower/commands.json $XDG_CONFIG_HOME/sunflower/commands.json
ln -s $HOME/.dotfiles_sync/sunflower/mounts.json $XDG_CONFIG_HOME/sunflower/mounts.json
ln -s $HOME/.dotfiles_sync/sunflower/plugins.json $XDG_CONFIG_HOME/sunflower/plugins.json
ln -s $HOME/.dotfiles_sync/sunflower/toolbar.json $XDG_CONFIG_HOME/sunflower/toolbar.json

ln -s $HOME/.dotfiles_sync/opera/urlfilter.ini $XDG_CONFIG_HOME/opera/urlfilter.ini
ln -s $HOME/.dotfiles_sync/opera/speeddial.ini $XDG_CONFIG_HOME/opera/speeddial.ini
ln -s $HOME/.dotfiles_sync/opera/fanboy-adblocklist-elements-v4.css $XDG_CONFIG_HOME/opera/fanboy-adblocklist-elements-v4.css





#dir=~/.dotfiles_sync
#bakdir=~/.dotfiles_bak
#files=""

################

# create dotfiles_bak in homedir
#echo "Creating $bakdir for backup of any existing dotfiles in ~"
#mkdir -p $bakdir
#echo "...done"

# change to dotfiles directory
#echo "Changing to the $dir directory"
#cd $dir
#echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
#for file in $files; do
#    echo "Moving any existing dotfiles from ~ to $bakdir"
#    mv ~/.$file ~/.dotfiles_bak/
#    echo "Creating symlink to $file in home directory."
#    ln -s $dir/$file ~/.$file
#done
