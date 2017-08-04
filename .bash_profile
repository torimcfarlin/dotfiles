source /usr/local/opt/chruby/share/chruby/chruby.sh
chruby ruby-2.3.4
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion
