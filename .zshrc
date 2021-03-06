# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/mac/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="$PATH:/Library/Java/JavaVirtualMachines/jdk1.8.0_40.jdk/Contents/Home/bin:/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/share/npm/bin:/usr/local/Cellar/nimrod/0.9.2/libexec/bin:/Users/mac/Projects/fruits/moai-sdk-1.4p0/bin/osx:.mame"
# export MANPATH="/usr/local/man:$MANPATH"

export PATH=/usr/local/opt/vim/bin:$PATH
export PATH=$PATH:/usr/local/share/npm/bin #node.js
export PATH=$PATH:/usr/local/Cellar/nimrod/0.9.2/libexec/bin #nimrod
export PATH=$PATH:/Users/mac/Projects/fruits/moai-sdk-1.4p0/bin/osx #moai
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PATH=$PATH:.mame
export MANPATH=/usr/local/opt/erlang/lib/erlang/man:$MANPATH
export EDITOR=vim
export BUNDLER_EDITOR=subl
# export PRY_PEEK=INT   # peek on SIGINT (<ctrl+c>)

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

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
alias be='bundle exec'
alias s='bundle exec rails s'
alias c='bundle exec rails c'
alias redis='redis-server /usr/local/etc/redis.conf'
alias py_s='python -m SimpleHTTPServer 8000'
alias ruby_s='ruby -run -e httpd . -p 5000'
alias postgres='postgres -D /usr/local/var/postgres'
alias asterisk='/usr/local/asterisk/sbin/asterisk -c'
alias die='pkill -9 -fi'
alias pull='git pull && bundle install && rake db:migrate db:test:prepare'
alias git='hub'
alias sshu='ssh -q -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no'
#alias rm='trash'

#source /usr/local/share/chruby/chruby.sh
#source /usr/local/share/chruby/auto.sh
#chruby ruby-2.3.1

# export JAVA_HOME=$(/usr/libexec/java_home)
# JDK switch
# function setjdk() {
#   if [ $# -ne 0 ]; then
#    removeFromPath '/System/Library/Frameworks/JavaVM.framework/Home/bin'
#    if [ -n "${JAVA_HOME+x}" ]; then
#     removeFromPath $JAVA_HOME
#    fi
#    export JAVA_HOME=`/usr/libexec/java_home -v $@`
#    export PATH=$JAVA_HOME/bin:$PATH
#   fi
#  }
#  function removeFromPath() {
#   export PATH=$(echo $PATH | sed -E -e "s;:$1;;" -e "s;$1:?;;")
#  }
# setjdk 1.8

# brew install jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/mac/Downloads/google-cloud-sdk/path.zsh.inc ]; then
  source '/Users/mac/Downloads/google-cloud-sdk/path.zsh.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/mac/Downloads/google-cloud-sdk/completion.zsh.inc ]; then
  source '/Users/mac/Downloads/google-cloud-sdk/completion.zsh.inc'
fi

#export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_AUTO_UPDATE_SECS=86400

export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

export PATH=$PATH:$HOME/Library/Python/3.7/bin
export GOPATH="$HOME/go"
export GOROOT="$(brew --prefix go@1.16)/libexec"
export PATH="${GOPATH}/bin:${GOROOT}/bin:$PATH"
# added by travis gem
[ -f /Users/mac/.travis/travis.sh ] && source /Users/mac/.travis/travis.sh

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/opt/ruby/bin:$PATH"
