#profiling start time
#zmodload zsh/zprof

# Path to your oh-my-zsh installation.
export ZSH=/Users/yuralukashik/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="avit"

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
COMPLETION_WAITING_DOTS="true"

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
plugins=(git colored-man colorize github virtualenv pip python brew osx zsh-syntax-highlighting)

# User configuration

export PATH="/Users/yuralukashik/.cabal/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/yuralukashik/.composer/vendor/bin/"
# export MANPATH="/usr/local/man:$MANPATH"

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
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"
#setopt PROMPT_SUBST
#PROMPT='%{$(pwd|grep --color=always /)%${#PWD}G%} %(!.%F{red}.%F{cyan})%n%f@%F{yellow}%m%f%(!.%F{red}.)%#%f '
build_prompt() {
  RETVAL=$?
}
PROMPT="$PROMPT$(build_prompt)"
zstyle ':completion:*' menu select
autoload -Uz compinit
if [ $(date +'%j') != $(stat -f '%Sm' -t '%j' ~/.zcompdump) ]; then
  compinit
else
  compinit -C
fi

export PATH="$HOME/bin:$HOME/.cabal/bin:$PATH"

#archey -c

#alias dockerboot="eval $(docker-machine env default)"

alias spec="bin/phpspec"
alias feature="bin/behat"
alias dcom="docker-compose"

alias gitclear="git branch -d \$(git branch)"

alias zshconfig="nvim ~/.zshrc"
alias zshupdate="source ~/.zshrc"

alias api="dcom exec api bash"

alias glg="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias grb="git rebase -i"
alias grbc"git rebase -i continue" 
alias pr="hub pull-request"

alias chrome="open -a 'Google Chrome'"

alias aglio="/Users/yuralukashik/.npm-packages/bin/aglio"

alias ini="nvim /usr/local/etc/php/7.2/php.ini"

alias t0="tmux attach-session -t 0"

export PATH=".composer/vendor/bin;/usr/local/bin/php;/Users/yuralukashik/.npm-packages;/Users/yuralukashik/.npm-packages/bin;/usr/local/sbin:$PATH"

fpath=(/usr/local/share/zsh-completions $fpath)

#profiling start time
#zprof

eval $(dinghy env)
