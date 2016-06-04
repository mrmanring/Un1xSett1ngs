alias viprof='vi ~/.bash_profile; source ~/.bash_profile'

#####################################################
# ENVIRONMENT SPECIFIC STUFF

# Home iMac
if [ `hostname` == 'Manring-iMac' ]; then
    . .bashrcs/Manring-iMac
fi

#####################################################
# UNIX-Flavor Specific
if [ -e "/etc/redhat-release" ]; then
    . .bashrcs/redhat
fi

#####################################################
# COMMON ACROSS SYSTEMS

# Elevated vi
alias svi='sudo vi'

# Git helpers
alias ga='git add'
alias gash='git stash'
alias gashp='git stash pop'
alias gb='git branch'
alias gc='git commit'
alias gco='git checkout'
alias gd='git diff -w'
alias gl='git log -10 --oneline --color'
alias glog='git log'
alias gm='git merge'
alias gr='git reset'
alias grh='git reset HEAD'
alias grm='git rm'
alias gs='git status'

function gpo {
  if [ -z "$1" ]; then
    git push origin master
  else
    git push origin $1
  fi
}

function glo {
  if [ -z "$1" ]; then
    git pull origin master
  else
    git pull origin $1
  fi
}
