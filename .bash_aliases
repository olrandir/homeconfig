alias la="ls -laFh"
alias l="ls -lFh"
alias cd..="cd .."

alias testdeploy="cap dev deploy testserver:migrate"
alias proddeploy="cap prod deploy deploy:collectstatic deploy:migrate config:password_protect deploy:db_backup"
alias homeconfig='git --git-dir=/home/dimis/.homeconfig.git/ --work-tree=/home/dimis'
