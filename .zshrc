# Path to your oh-my-zsh installation.
export ZSH=/Users/nekron/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/Library/Java/JavaVirtualMachines/jdk1.8.0_40.jdk/Contents/Home/bin:/Users/nekron/.rbenv/shims:/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/share/npm/bin:/usr/local/Cellar/nimrod/0.9.2/libexec/bin:/Users/nekron/Projects/fruits/moai-sdk-1.4p0/bin/osx:.mame"
# export MANPATH="/usr/local/man:$MANPATH"

export PATH=$PATH:/usr/local/share/npm/bin #node.js
export PATH=$PATH:/usr/local/Cellar/nimrod/0.9.2/libexec/bin #nimrod
export PATH=$PATH:/Users/nekron/Projects/fruits/moai-sdk-1.4p0/bin/osx #moai
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH=$PATH:.mame
export MANPATH=/usr/local/opt/erlang/lib/erlang/man:$MANPATH
export EDITOR=mate
export BUNDLER_EDITOR=subl
# export PRY_PEEK=INT   # peek on SIGINT (<ctrl+c>)

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

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

eval "$(rbenv init -)"

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
