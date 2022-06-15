# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# theme/plugins
ZSH_THEME="duellj"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
# HISTFILE=~/.cache/zsh/history

# User configuration
#export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
#export PATH="$PATH:$GEM_HOME/bin"
export PATH="$PATH:$HOME/.local/bin"

# default apps
export EDITOR="nvim"
export TERMINAL="alacritty"

# alias
alias v=nvim
# alias v-conf='gnome-terminal --geometry 140x40 --working-directory=$HOME/.config/nvim -- nvim'
# alias nv='gnome-terminal --geometry 140x40 --working-directory=$HOME/Belgeler/Works -- nvim'
alias sv='sudo nvim'
alias update='sudo pacman -Syu --noconfirm'
alias full-update='yay'
alias ssh_clear='rm ~/.ssh/known_hosts'
alias ls="exa -aG --color=always --icons --group-directories-first"
alias share='net usershare add'
alias unshare='net usershare remove'
alias sharelist='net usershare info'
# neofetch
