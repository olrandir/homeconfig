alias la="ls -laFh"
alias l="ls -lFh"
alias cd..="cd .."

alias testdeploy="cap dev deploy testserver:migrate"
alias proddeploy="cap prod deploy:db_backup deploy deploy:collectstatic deploy:migrate config:password_protect"
alias homeconfig='git --git-dir=/home/dimis/.homeconfig.git/ --work-tree=/home/dimis'
alias ld="ls -lad"
alias datafart='curl --data-binary @- datafart.com'
