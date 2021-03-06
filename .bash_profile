[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

export PATH=$PATH:/usr/local/share/npm/bin #Added npm path for node.js
export PATH=$PATH:/usr/local/Cellar/nimrod/0.9.2/libexec/bin #Added path for nimrod
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH=$PATH:.mame #added path for MAME!
export MANPATH=/usr/local/opt/erlang/lib/erlang/man:$MANPATH
export EDITOR=mate
export BUNDLER_EDITOR=subl
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export HISTCONTROL=ignoredups
export HISTSIZE=5000
# export PRY_PEEK=INT   # peek on SIGINT (<ctrl+c>)

function git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(git:\1)/'
}

function hg_branch {
  branch="$(hg branch 2> /dev/null)"
  if [ ${#branch} -eq 0 ]; then
    echo ""
  else
    echo " (hg:$branch)"
  fi
}

export PS1='\[\e[0;35m\]\u@\h \[\e[0;31m\]\w\[\e[0;34m\]$(git_branch)\[\e[0;00m\]:\[\e[0m\] '
# export PS1='\[\e[0;35m\]\u@\h \[\e[0;31m\]\w\[\e[0;34m\]$(hg_branch)$(git_branch)\[\e[0;00m\]:\[\e[0m\] '
# http://askubuntu.com/questions/16728/hide-current-working-directory-in-terminal

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias lo='ls -alFO'
alias lf='ls -lF'
alias la='ls -AF'
alias l='ls -CF'
alias s='rails s'
alias c='rails c'
alias redis='redis-server /usr/local/etc/redis.conf'
alias py_s='python -m SimpleHTTPServer 8000'
alias ruby_s='ruby -run -e httpd . -p 5000'
alias postgres='postgres -D /usr/local/var/postgres'
alias asterisk='/usr/local/asterisk/sbin/asterisk -c'
alias die='pkill -9 -fi'
#alias rm='trash'

# Reverse search with arrows
# bind '"\e[A":history-search-backward'
# bind '"\e[B":history-search-forward'

# source /usr/local/share/chruby/chruby.sh
# source /usr/local/share/chruby/auto.sh
# chruby ruby-2.3.1

# Forward reverse search using ctr+s (this disables ctrl+s as a way to freeze the terminal output)
# stty -ixon

# Forward reverse search using ctrl+t (this disables ctrl+t as transpose characters)
bind "\C-t":forward-search-history

# exenv
# export PATH="$HOME/.exenv/bin:$PATH"
# eval "$(exenv init -)"

# `boot2docker shellinit`

export JAVA_HOME=$(/usr/libexec/java_home)
# JDK switch
function setjdk() {
  if [ $# -ne 0 ]; then
   removeFromPath '/System/Library/Frameworks/JavaVM.framework/Home/bin'
   if [ -n "${JAVA_HOME+x}" ]; then
    removeFromPath $JAVA_HOME
   fi
   export JAVA_HOME=`/usr/libexec/java_home -v $@`
   export PATH=$JAVA_HOME/bin:$PATH
  fi
 }
 function removeFromPath() {
  export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
 }
setjdk 1.8

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
