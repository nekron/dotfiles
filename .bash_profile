export PATH=$PATH:/usr/local/share/npm/bin #Added npm path for node.js
export PATH=$PATH:/usr/local/Cellar/nimrod/0.9.2/libexec/bin #Added path for nimrod
export PATH=$PATH:/Users/nekron/Projects/fruits/moai-sdk-1.4p0/bin/osx #Added path for moai
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export MANPATH=/usr/local/opt/erlang/lib/erlang/man:$MANPATH
export EDITOR=mate
export BUNDLER_EDITOR=subl
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export HISTCONTROL=ignoredups
export HISTSIZE=5000

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

# export PS1='\[\e[0;35m\]\u@\h \[\e[0;31m\]\w\[\e[0;34m\]$(git_branch)\[\e[0;00m\]:\[\e[0m\] '
export PS1='\[\e[0;35m\]\u@\h \[\e[0;31m\]\w\[\e[0;34m\]$(hg_branch)$(git_branch)\[\e[0;00m\]:\[\e[0m\] '
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
alias elastic='elasticsearch -D es.config=/usr/local/opt/elasticsearch/config/elasticsearch.yml'
alias redis='redis-server /usr/local/etc/redis.conf'
alias py_s='python -m SimpleHTTPServer 8000'
alias ruby_s='ruby -run -e httpd . -p 5000'
alias postgres='postgres -D /usr/local/var/postgres'
alias asterisk='/usr/local/asterisk/sbin/asterisk -c'
alias die='pkill -9 -fi'

# Reverse search with arrows
# bind '"\e[A":history-search-backward'
# bind '"\e[B":history-search-forward'

eval "$(rbenv init -)"


# Forward reverse search using ctr+s (this disables ctrl+s as a way to freeze the terminal output)
# stty -ixon

# Forward reverse search using ctrl+t (this disables ctrl+t as transpose characters)
bind "\C-t":forward-search-history

# exenv
# export PATH="$HOME/.exenv/bin:$PATH"
# eval "$(exenv init -)"

`boot2docker shellinit`
