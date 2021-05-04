# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/tylerfisher/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="gallois"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "awesomepanda" "gallois" "refined")

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias dc="docker-compose"
alias dcu="docker-compose up"
alias cdab="cd ~/code/avant-basic"
alias cdc="cd ~/code/complaints"
alias cdcc="cd ~/code/cards/credit-card-api"
alias cdfdr="cd ~/code/cards/fdr_gateway"
alias dcdcms="docker-compose run web bundle exec rake db:drop db:create db:migrate db:seed"
alias vlogin="vault login -method=ldap -address=$VAULT_ADDR username=tfishe54"
alias dbuild='docker build -t "$(basename $(pwd))" .'
alias dcms="bundle exec rake db:drop db:create db:migrate db:seed"
alias dcls="bundle exec rake db:drop db:create db:structure:load db:seed"
alias abdbs="DATABASE_URL=postgres://fork_super_user:hhDxTsU7WuWCtOTH09WlEtInSB3EVt@avant-staging-fork.staging.amount.com:5432/deubc3pju2ki49 bundle exec rails server -p 5000"
alias ccr="docker-compose run web bundle exec rspec"
alias notes="vim ~/notes/"
alias ccattach="dcu -d && docker attach credit-card-api_web_1"
alias fdrattach='docker-compose up -d && docker attach fdr_gateway_web_1'
alias clean="git branch | grep -v '^*' | xargs git branch -D"
alias cdd="cd ~/code/disputes"
alias cdpg="cd ~/code/payment-gateway"
alias cdpp="cd ~/personal_projects"

# rbenv init
eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export VAULT_CACERT="/etc/pki/tls/certs/AvantCorporationCA.crt"
export VAULT_ADDR="https://vault.ad.avant.com"

path=($path ~/bin)
export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"
export PATH="/usr/local/opt/postgresql@9.4/bin:$PATH"

export VISUAL=vim
export EDITOR="$VISUAL"

export PATH="$PATH:/Users/tylerfisher/Library/Python/2.7/bin"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/tylerfisher/code/workflow-lambda/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/tylerfisher/code/workflow-lambda/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/tylerfisher/code/workflow-lambda/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/tylerfisher/code/workflow-lambda/node_modules/tabtab/.completions/sls.zsh
export PATH="/usr/local/opt/postgresql@9.4/bin:$PATH"
export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"
