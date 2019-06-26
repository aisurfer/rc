alias hpwd='echo `hostname`:`pwd`'
alias cleanswp='mkdir -p ~/tmp/trash ; find . -name "*.sw*" | while read f ; do echo Move $f to trash ; mv $f ~/tmp/trash ; done'
alias gitup='git stash ; git pull --rebase ; git push origin ; git stash pop'
alias gre='grep --color=auto -rnIH'
