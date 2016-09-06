export EDITOR='emacs'

if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

source ~/perl5/perlbrew/etc/bashrc

### Amazon ELB
export PATH="/Users/glenscott/AWS-ElasticBeanstalk-CLI-2.6.4/eb/linux/python2.7:$PATH"

## Git Prompt
. /usr/local/etc/bash_completion.d/git-prompt.sh 
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWCOLORHINTS=true
export PS1='\w$(__git_ps1 " (%s)")\$ '

## ls
export CLICOLOR=true