alias viprof='vi ~/.bash_profile; source ~/.bash_profile'

#####################################################
# ENVIRONMENT SPECIFIC STUFF

# Home iMac
if [ `hostname` == 'Manring-iMac' ]; then
    eval "$(rbenv init -)"

    # General aliases
    alias ll='ls -l'

    # Ruby helpers
    alias rgi='gem install'

    # Heroku push/pull
    function gph {
      if [ -z "$1" ]; then
        git push heroku master
      else
        git push heroku $1
      fi
    }
    function glh {
      if [ -z "$1" ]; then
        git pull heroku master
      else
        git pull heroku $1
      fi
    }

    # Helper to go to different directories.
    function goto {
      case $1 in
        "repos") cd /Users/michaelmanring/Michael/workspace/repos ;;
         "ncsu") cd /Users/michaelmanring/Michael/NCSU\ Grad\ School ;;
          "ctc") cd /Users/michaelmanring/Michael/workspace/repos/caryteencouncil ;;
       "ctcphp") cd /Users/michaelmanring/Michael/workspace/repos/caryteencouncil.com ;;
              *) cd ;;
      esac
    }

fi

#####################################################
# COMMON ACROSS SYSTEMS

# Git helpers
alias ga='git add'
alias gash='git stash'
alias gashp='git stash pop'
alias gc='git commit'
alias gd='git diff'
alias gl='git log -10 --oneline --color'
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

