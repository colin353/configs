# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="colin"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
ZSH_CUSTOM=$HOME/.config/configs/

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/go/bin:$PATH
export PATH=$HOME/bin:$PATH

export PATH=$HOME/Documents/scratch/emsdk-portable/emscripten/incoming:$PATH
export PATH=$HOME/Documents/scratch/emsdk-portable/node/8.9.1_64bit/bin/node:$PATH
export PATH=$HOME/Documents/code/flutter/flutter/bin:$PATH
export PATH=$HOME/Documents/code/flutter/flutter/bin/cache/dart-sdk/bin:$PATH
export PATH=/usr/local/go/bin:$PATH
export PATH=$HOME/Documents/android_sdk/tools:$PATH

export TERM=xterm-256color
export ANDROID_HOME=/Users/colinmerkel/Library/Android/sdk

fortune | cowsay -f tux

alias tmux='tmux -u'
alias python=python2.7

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export EDITOR=vim
export GOPATH=$HOME/go

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/colinmerkel/Documents/scratch/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/colinmerkel/Documents/scratch/google-cloud-sdk/path.zsh.inc'; fi
# The next line enables shell command completion for gcloud.
if [ -f '/Users/colinmerkel/Documents/scratch/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/colinmerkel/Documents/scratch/google-cloud-sdk/completion.zsh.inc'; fi

TZ='America/New_York'; export TZ

client () {
  BASE_DIR=`tig base_dir`
  cd $BASE_DIR
  if [[ $# -eq 0 ]] ; then
    MESSAGE=`tmux display-message -p '#W'`
    cd $BASE_DIR/$MESSAGE
  else
    tig new $1
    tmux rename-window $1
    cd $BASE_DIR/$1
  fi
}
