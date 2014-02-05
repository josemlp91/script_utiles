#Jose Miguel Lopez Perez


alias r='clear'
alias rm='rm -i'
alias djrun='python manage.py runserver'
alias sc='cd ~/proyectos/SocialCookies/ENV1/webcookies/'

alias api='sudo apt-get install'
alias p='python'
alias subli='sublime-text' 
alias gm='~/gm.sh'

alias gpp="git pull;pit push"
alias gp="git pull"
alias gpu="git push"
alias gs="git status"
alias gl="git log"

alias gi="git init"



alias rmD="rmdir --ignore-fail-on-non-empty"

gr (){

git reset $1
git checkout HEAD .
git push --force

}

ga(){
git add "$1";
}

rmd(){

read -n2 -p "¿Está seguro de que desea borrar esta carpeta [S/n]? " OPCION
printf "\n"

while [ $OPCION != "S" ] && [ $OPCION != "s" ] && [ $OPCION != "N" ] && [ $OPCION != "n" ];
do 
        read -n2 -p "\n¿Está seguro de que desea borrar esta caprte [S/n]?" OPCION
        printf "\n"
done


if [ $OPCION == "S" ] || [ $OPCION == "s" ];   then
	rm -dfr $1

 elif [ $OPCION == "N" ] || [ $OPCION == "n" ]; then 
 	printf "Cancelando operacion\n"

 fi

}

cap(){
git add -A
git commit -a -m "$1";
git pull;
git push;
}

rap(){
git add -A
git commit -a -m "$1";
git pull;
git push origin $2;
}


gh(){
echo gh="Ayuda :)";
echo gpp="git pull;pit push";
echo gp="git pull";
echo gpu="git push";
echo gs="git status";
echo ga="git add fichero";
echo gr="git reset --hard HEAD";
echo gl="git log";
echo cap 'commit message';

}




# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


