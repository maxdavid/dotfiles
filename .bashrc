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

# Comment this out to disable color prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
  if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
    color_prompt=yes
  else
    color_prompt=
  fi
fi

if [ "$color_prompt" = yes ]; then
  PS1='[\[\033[0;32m\]\u\[\033[0;37m\]@\[\033[0;32m\]\h\[\033[00m\] \[\033[01;34m\]\W\[\033[00m\]]\$ '
else
  PS1='[\u@\h \W]\$ '
fi
unset color_prompt force_color_prompt

export PATH
export EDITOR=vim
export BROWSER=firefox

[[ -s "/home/max/.rvm/scripts/rvm" ]] && source "/home/max/.rvm/scripts/rvm"
