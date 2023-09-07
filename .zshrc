# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
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
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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
HISTSIZE=9999999999
HISTFILE=~/.zsh_history

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(archlinux common-aliases git github bundler rsync rvm screen terraform docker docker-compose rails zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration
unsetopt share_history

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR=nano

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# zmv
autoload zmv

###############################################################################
### Aliases                                                                 ###
###############################################################################

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias ls='ls --color=auto'
alias dmesg='dmesg --color=always'
alias grep='grep --color=always -n'
alias GREP='/usr/bin/grep'
alias less='less --hilite-search --raw-control-chars'
alias userctl='systemctl --user'
alias rm='rm -I'

alias mksrcinfo='makepkg --printsrcinfo > .SRCINFO'

# Git aliases
alias grbiom='git rebase -i origin/master'
alias gcn='git commit -v --no-edit --no-verify'
alias gcnn!='git commit -v --no-edit --amend --no-verify'
alias gpuom='git push --set-upstream origin master'

# Docker Swarm aliases
alias dstd="docker stack deploy"
alias dstls="docker stack ls"
alias dstps="docker stack ps"
alias dstrm="docker stack rm"
alias dsts="docker stack services"

alias dsvc="docker service create"
alias dsvi="docker service inspect"
alias dsvl="docker service logs"
alias dsvls="docker service ls"
alias dsvps="docker service ps"
alias dsvrm="docker service rm"
alias dsvrb="docker service rollback"
alias dsvs="docker service scale"
alias dsvu="docker service update"

alias dndm="docker node demote"
alias dni="docker node inspect"
alias dnls="docker node ls"
alias dnpm="docker node promote"
alias dnps="docker node ps"
alias dnrm="docker node rm"
alias dnu="docker node update"

alias dcfgc="docker config create"
alias dcfgi="docker config inspect"
alias dcfgls="docker config ls"
alias dcfgrm="docker config rm"

# Lazy-load NVM
alias nvm="unalias nvm; source /usr/share/nvm/init-nvm.sh; nvm $@"

###############################################################################
### Functions                                                               ###
###############################################################################

function pacman() {
  case $1 in
    -S | -D | -S[^sih]* | -R* | -U* | -Fy)
      /usr/bin/sudo /usr/bin/pacman "$@" ;;
    *)
      /usr/bin/pacman "$@" ;;
    esac
}

function systemctl() {
  case $1 in
    start | stop | restart | enable | disable)
      /usr/bin/sudo /usr/bin/systemctl "$@" ;;
    *)
      /usr/bin/systemctl "$@" ;;
  esac
}

###############################################################################
### Keyring                                                                 ###
###############################################################################

# Start keyring daemon
#if [ -n "$DESKTOP_SESSION" ]; then
#  eval $(gnome-keyring-daemon)
#  export SSH_AUTH_SOCK
#fi

export SSH_AUTH_SOCK=/run/user/1000/keyring/ssh

###############################################################################
### Environment variables                                                   ###
###############################################################################

# Private variables
export ENV=development
export OVERCOMMIT_COLOR=1

###############################################################################
### PATH variable                                                           ###
###############################################################################

# Add scripts to PATH
export PATH="${PATH}:${HOME}/.bin/"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:${HOME}/.rvm/bin"
