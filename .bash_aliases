alias la="ls -laFh"
alias l="ls -lFh"
alias cd..="cd .."

alias testdeploy="cap dev deploy testserver:migrate config:chown"
alias proddeploy="cap prod deploy:db_backup deploy deploy:collectstatic deploy:migrate config:password_protect config:chown"
alias homeconfig='git --git-dir=/home/dimis/.homeconfig.git/ --work-tree=/home/dimis'
alias datafart='curl --data-binary @- datafart.com'
