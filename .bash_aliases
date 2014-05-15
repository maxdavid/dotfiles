alias ls='ls --color=auto'
alias ..='cd ..'
alias ...='cd ../..'

alias ada='ssh davmax04@ada.evergreen.edu'
alias slacr='ssh -t davmax04@ada.evergreen.edu ssh pipecork@10.14.3.106'
alias sourdiesel='export TERM=xterm;ssh -t davmax04@ada.evergreen.edu ssh pipecork@10.14.3.133'
alias tunny='ssh max@192.241.195.88'
alias gibson='ssh max@192.241.235.71'
alias yellowfin='ssh max@dogfish.servebeer.com -p 2222'
alias player='ssh player@dogfish.servebeer.com -p 22'

alias tahoe='ssh maxdavid@tahoe.cs.dartmouth.edu'
alias conch='ssh max@129.170.213.70'
alias aristotle='ssh canopus@aristotle.dartmouth.edu'
alias aurora='ssh -t canopus@aristotle.dartmouth.edu ssh aurora@157.132.41.82'

alias tunneltrac='sudo ssh -f davmax04@ada.evergreen.edu -L 80:trac.evergreen.edu:80 -N'
alias tunnelslacr='sudo ssh -f tc_max@ada.evergreen.edu -L 80:slacr.evergreen.edu:80 -N'
alias tunnelkace='sudo ssh -f tc_max@ada.evergreen.edu -L 80:kaceapp.evergreen.edu:80 -N'

alias gs='git status'
alias gp='git pull'

alias multihead='xrandr --output LVDS1 --off --output HDMI1 --auto --output VGA1 --auto --left-of HDMI1; killall trayer; trayer --edge top --alpha 0 --align right --SetDockType true --SetPartialStrut true --expand true --width 5 --transparent true --tint 0x000000 --height 12 & disown'

alias sax='/usr/local/sbin/epic_cuckoo.sh'
alias please="sudo"

alias dubstep='echo "main(i){for(i=0;;i++)putchar(((i*(i>>8|i>>9)&46&i>>8))^(i&i>>13|i>>6));}" | gcc -x c - && ./a.out | aplay'
alias house='echo "main(i){for(i=0;;i++)putchar(((i*(i>>17|i>>9)&46&i>>3))^(i&i>>10|i>>100));}" | gcc -x c - && ./a.out | aplay'
alias remix='echo "main(i){for(i=0;;i++)putchar(((i*(i>>3|i>>11)&43&i>>8))^(i&i>>12|i>>4));}" | gcc -x c - && ./a.out | aplay'
alias remix2='echo "main(i){for(i=0;;i++)putchar(((i^(i>>64|i>>11)&70&i>>8))*(i&i>>12|i>>4));}" | gcc -x c - && ./a.out | aplay'
