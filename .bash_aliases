alias ls='ls --color=auto'
alias ..='cd ..'
alias ...='cd ../..'

alias ada='ssh tc_max@ada.evergreen.edu'
alias slacr='ssh -t tc_max@ada.evergreen.edu ssh pipecork@10.14.3.106'
alias davmax04='ssh davmax04@ada.evergreen.edu'
alias tunny='ssh max@192.241.195.88'

alias tunneltrac='sudo ssh -f tc_max@ada.evergreen.edu -L 80:trac.evergreen.edu:80 -N'
alias tunnelslacr='sudo ssh -f tc_max@ada.evergreen.edu -L 80:slacr.evergreen.edu:80 -N'
alias tunnelkace='sudo ssh -f tc_max@ada.evergreen.edu -L 80:kaceapp.evergreen.edu:80 -N'

alias gs='git status'
alias gp='git pull'

alias spy='lsof -i -P +c 0 +M | grep -i "$1"'
alias sax='/usr/local/sbin/epic_cuckoo.sh'
alias please="sudo"

