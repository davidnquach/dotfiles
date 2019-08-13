[[ $TERM == "dumb" ]] && unsetopt zle && PS1='$ ' && return
# export TERM="xterm-256color"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/dquach/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  package       # Package version
  node          # Node.js section
  ruby          # Ruby section
  elixir        # Elixir section
  xcode         # Xcode section
  swift         # Swift section
  golang        # Go section
  venv          # virtualenv section
  pyenv         # Pyenv section
  kubecontext   # Kubectl context section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
export SPACESHIP_USER_SHOW=always
export SPACESHIP_KUBECONTEXT_SHOW=false

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
plugins=(ruby tmux rake)

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

setopt hist_ignore_all_dups
setopt hist_reduce_blanks
setopt inc_append_history
setopt share_history
setopt auto_cd
setopt auto_list
setopt auto_menu
setopt always_to_end
zstyle ':completion:*' menu select
zstyle ':completion:*' group-name ''
zstyle ':completion:::::' completer _expand _complete _ignored _approximate

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

# Rspec
alias rs='RAILS_ENV=test bundle exec rspec'

# Bundle
alias bi='bundle install'
alias bl='bundle list'
alias bu='bundle update'
alias bus='bu --source'

# Elixir
alias e='elixir'

# Rake
alias rap='rake assets:precompile'
alias rat='RAILS_ENV=test bundle exec rake test'

# Command line
alias pb='cd ~/Projects/business-center'
alias pj='cd ~/Projects/jiffy'
alias pp='cd ~/Projects/phoenix'
alias p2='cd ~/Projects/p2services'
alias sz='source ~/.zshrc'

# Redis
alias reds='redis-server > /dev/null 2>&1 &'

# Kubernetes
alias k='kubectl'
alias kdesc='k describe'
alias kdp='k delete pod'
alias ke='k exec -it'
alias kgc='k config get-contexts'
alias kgp='k get pods'
alias kgh='k get hpa'
alias keh='k edit hpa'
alias kl='k logs'
alias kru='k rollout undo' # Ex. kubectl rollout undo <deployment name>. Done for each cluster
alias ksc='k config set-context'
alias kscale='k scale'
alias kgpj="kgp | grep jiffy | awk 'NR==1{ print \$1 }'"

# Gcloud
alias gsp='gcloud config set project'
alias ggc='gcloud container clusters get-credentials'
alias gcl='gcloud container clusters list'
alias gsd='gcloud container clusters --project vst-main-nonprod get-credentials nonprod3-use1 --zone us-east1'
alias gsdbg='gcloud container clusters --project vst-main-nonprod get-credentials nonprodbg2-use1 --zone  us-east1'
alias gsp='gcloud container clusters --project vst-main-prod get-credentials prod1-use1 --zone us-east1'
alias gspbg='gcloud container clusters --project vst-main-prod get-credentials prodbg1-use1 --zone us-east1'

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
alias gcon='g diff --name-only --diff-filter=U' # View files that have conflicts
alias gcos='g checkout staging'
alias gd='g diff'
alias gl='g log'
alias gm='g merge --no-ff'
alias gma='g merge --abort'
alias gprev='g prev'
alias gpush='g push'
alias gpo='g push -u origin'
alias grh='g reset --hard'
alias grs='g reset --soft'
alias gs='g status'
alias gst='g stash'
alias gstc='g stash clear'
alias gstl='g stash list'
alias gstp='g stash pop'
alias gsu='g submodule update'
alias guc='g update-index --assume-unchanged'
function gup () git pull && git submodule update

# mix
alias mdg='mix deps.get'
alias mdc='mix deps.clean --all --unlock'

# Vim
alias vim='nvim'
alias vt='vim ~/.tmux.conf'
alias vz='vim ~/.zshrc'
alias vv='vim ~/.vimrc'
alias vn='vim ~/.config/nvim/init.vim'

# direnv allows setting environment variables per directory
alias da='direnv allow'

### FUNCTIONS ###
# fzf
vf() { 
  local file
  file=$(fzf --preview="bat --theme=OneHalfDark --color=always {}" --bind "alt-j:preview-down,alt-k:preview-up,alt-J:preview-page-down,alt-K:preview-page-up")

  if [[ -n ${file} ]]; then
    vim ${file}
  else
    return
  fi
}

vc() {
  local file
  local conflicts

  conflicts=$(gcon)
  if [[ -z ${conflicts} ]]; then
    echo "no conflicts"
    return 0
  fi

  file=$(echo "$conflicts" | fzf)

  if [[ -n ${file} ]]; then
    vim ${file}
  else
    echo "file not found"
    return 1
  fi
}

pf() {
  local dir
  dir=$(find ~/Projects/* -maxdepth 0 -type d -print | awk -F "/" '{ print $5 }' | fzf)

  if [[ ! -z "$dir" ]]; then
    cd "$HOME/Projects/$dir"
  fi
}

kpf() {
  if [[ $# -eq 0 ]]; then
    echo 'No arguments given'
    return 1
  fi

  kgp | grep $1 | fzf | awk 'BEGIN{ORS=""} /jiffy/{ print $1 }' | pbcopy
}

kpe() {
  if [[ $# -eq 0 ]]; then
    echo 'No arguments given'
    return 1
  fi

  local pod
  pod=$(kgp | grep $1 | fzf | awk 'BEGIN{ORS=""} /jiffy/{ print $1 }')

  if [[ ! -z "$pod" ]]; then
    ke $pod bash
  fi
}
### END ###

# Adds zsh syntax highlighting to the command line
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

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

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/dquach/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/dquach/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/dquach/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/dquach/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# rbenv
# eval "$(rbenv init -)"

### ENVIRONMENT VARIABLES ###
# go
export GOBIN=$GOPATH/bin

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"
export PATH="$HOME/.jenv/bin:$PATH"
export PATH="$HOME/Projects/apache-maven-3.6.0/bin:$PATH"

eval "$(jenv init -)"

# direnv
eval "$(direnv hook zsh)"

export PATH="/usr/local/sbin:$PATH"
export PATH="/Users/dquach/.bin:$PATH"

. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
. $HOME/.zsh/minikube_completions

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPTS='
  --height 40% 
  --layout=reverse 
  --border
  --color fg:242,bg:236,hl:65,fg+:15,bg+:239,hl+:108
  --color info:108,prompt:109,spinner:108,pointer:168,marker:168
'

# zsh autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=244"
