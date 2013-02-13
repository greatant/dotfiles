#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

shopt -s autocd

source /usr/share/doc/pkgfile/command-not-found.bash

PS1='[\u@\h \W]\$ '

PATH="${PATH}:$HOME/bin"

export EDITOR="nano -w"
export OPERA_PERSONALDIR="$XDG_CONFIG_HOME/opera/"
#export RXVT_SOCKET="$XDG_CONFIG_HOME/urxvt/"
export FZ_DATADIR="$XDG_CONFIG_HOME/filezilla/"
export VBOX_USER_HOME="$XDG_CONFIG_HOME/VirtualBox/"
export MPLAYER_HOME="$XDG_CONFIG_HOME/mplayer/"
export ncmpcpp_directory="$XDG_CONFIG_HOME/ncmpcpp/"
export FVWM_USERDIR="$XDG_CONFIG_HOME/fvwm"

alias startx='startx &> ~/.xlog'
alias jdownloader='jdownloader -r $XDG_CONFIG_HOME/jdownloader/'

alias diff='colordiff'
alias grep='grep --color=auto'
alias more='less'
alias df='df -h'
alias du='du -c -h'
alias mkdir='mkdir -p -v'
alias nano='nano -w'
alias ping='ping -c 4'
alias ..='cd ..'
alias ls='ls --color=auto'

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

complete -cf sudo
complete -cf man




extract() {
    local c e i

    (($#)) || return

    for i; do
        c=''
        e=1

        if [[ ! -r $i ]]; then
            echo "$0: file is unreadable: \'$i'" >&2
            continue
        fi

        case $i in
        *.t@(gz|lz|xz|b@(2|z?(2))|a@(z|r?(.@(Z|bz?(2)|gz|lzma|xz)))))
               c='bsdtar xvf';;
        *.7z)  c='7z x';;
        *.Z)   c='uncompress';;
        *.bz2) c='bunzip2';;
        *.exe) c='cabextract';;
        *.gz)  c='gunzip';;
        *.rar) c='unrar x';;
        *.xz)  c='unxz';;
        *.zip) c='unzip';;
        *)     echo "$0: unrecognised file extension: \'$i'" >&2
               continue;;
        esac

        command $c "$i"
        e=$?
    done

    return $e
}


