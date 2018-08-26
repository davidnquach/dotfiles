[[ $TERM == "dumb" ]] && unsetopt zle && PS1='$ ' && return
# export TERM="xterm-256color"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/dquach/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="sunrise"

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
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(ruby rails tmux rake)

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Rails
alias rdc='RAILS_ENV=development bundle exec rails c'
alias rds='RAILS_ENV=development bundle exec rails s'
alias rst='bin/rails db:environment:set RAILS_ENV=test'
alias rt='RAILS_ENV=test bundle exec rails test'
alias rtm='RAILS_ENV=test rake db:migrate'
alias rts='RAILS_ENV=test bundle exec rails s'
alias rut='RAILS_ENV=test bundle exec ruby -Itest'

# Bundle
alias bi='bundle install'
alias bl='bundle list'
alias bu='bundle update'
alias bus='bu --source'

# Rake
alias rap='rake assets:precompile'
alias rat='RAILS_ENV=test bundle exec rake test'

# Command line
alias sz='source ~/.zshrc'

# Redis
alias reds='redis-server > /dev/null 2>&1 &'

# Kubernetes
alias k='kubectl'
alias kdp='k delete pod'
alias ke='k exec -it'
alias kgc='k config get-contexts'
alias kgp='k get pods'
alias kl='k logs'
alias kru='k rollout undo' # Ex. kubectl rollout undo <deployment name>. Done for each cluster
alias ksc='k config set-context'

# Gcloud
alias gsp='gcloud config set project'
alias ggc='gcloud container clusters get-credentials'

# Git
alias g='git'
alias ga='g add .'
alias gb='g branch'
alias gbd='g branch -D'
alias gc='g commit'
alias gco='g checkout'
alias gcob='g checkout -b'
alias gcod='g checkout develop'
alias gcom='g checkout master'
alias gcon='g conflicts'
alias gcos='g checkout staging'
alias gd='g diff'
alias gl='g log'
alias gm='g merge --no-ff'
alias gma='g merge --abort'
alias gpush='g push'
alias grh='g reset --hard'
alias grs='g reset --soft'
alias gs='g status'
alias gst='g stash'
alias gstc='g stash clear'
alias gstl='g stash list'
alias gstp='g stash pop'
alias gsu='g submodule update'
alias guc='g update-index --assume-unchanged'
alias gup='g up'

# Vim
alias vim='nvim'

# Adds zsh syntax highlighting to the command line
# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Environment Variable for tmuxinator
export EDITOR='nvim'

# Completion file for tmuxinator
source ~/.bin/tmuxinator.zsh

if [ -z "$SSH_AUTH_SOCK" ] ; then
  eval `ssh-agent -s`
  ssh-add
fi

if [[ $TERM = dumb ]]; then
  unset zle_bracketed_paste
fi

stty erase '^?'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dquach/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/dquach/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/dquach/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/dquach/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# rbenv
eval "$(rbenv init -)"
