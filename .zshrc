# Path to your oh-my-zsh installation.
export ZSH="/home/maximilian/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  colored-man-pages
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

# aliases
# activate conda
. $HOME/miniconda3/etc/profile.d/conda.sh
# conda activate
alias wake="sudo etherwake 50:E5:49:50:FA:E8 -i enp0s25"
# alias suspend='betterlockscreen -l & systemctl suspend '

export PYTHONPATH=${PYTHONPATH}:/usr/local/lib/
export C_INCLUDE_PATH=${C_INCLUDE_PATH}:${HOME}/usr/local/lib
