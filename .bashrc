#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

if [ -e ~/.bashrc.aliases ] ; then
   source ~/.bashrc.aliases
fi

# >>> Added by cnchi installer
BROWSER=/usr/bin/chromium
EDITOR=/usr/bin/nano

# import wal colorscheme asynchronously
(cat ~/.cache/wal/sequences &)

# use wal color cache
if [ -e $HOME/.cache/wal/colors.sh ] ; then
   . "$HOME/.cache/wal/colors.sh"
fi
