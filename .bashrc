#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

if [ -f /etc/dircolors ]; then
	eval $(dircolors -b /etc/dircolors)
	
	if [ -f "$HOME/.dircolors" ] ; then
		eval $(dircolors -b $HOME/.dircolors)
	fi
	
	
	alias ls='ls --color=auto'
	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'
fi

PS1='[\u@\h \W]\$ '

export PATH

[[ -s "/home/max/.rvm/scripts/rvm" ]] && source "/home/max/.rvm/scripts/rvm"
