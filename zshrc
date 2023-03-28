#             _
#           | |
#    _______| |__  _ __ ___
#   |_  / __| '_ \| '__/ __|
#  _ / /\__ \ | | | | | (__
# (_)___|___/_| |_|_|  \___|
#
# Simple .zshrc that doesn't use/rely on oh-my-zsh!

#~/.local/bin/sfetch
#pokemon-colorscripts -n chimecho|tail -n +2
#pokemon-colorscripts -n granbull|tail -n+2
pokemon-colorscripts -s -n chatot|tail -n+2

HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000

export PATH=$PATH:$HOME/.local/bin
export XDG_CACHE_HOME=$HOME/.cache

#NL=$'\n'
#PROMPT="%F{blue}[%f%F{cyan}%~%f%F{blue}]%f${NL}%F{green} Δ%f "

export FZF_DEFAULT_OPTS=' --height 13'

# aliases=(
alias emacs="emacs -nw"
alias ls="ls --color"
alias la="ls -a"
alias ll="ls -l"
alias l="ls -la"
alias v="/usr/bin/vim"
alias vi="/usr/bin/vim"
alias vim="/usr/bin/nvim"
alias c="cd"
alias yay="paru"
alias lf="/usr/bin/lfrun"

#g() {
#  printf "checking if torify needs to be used...\n"
#  USETORIFY="no"
#  CURRENT_CON=$(nmcli -t -f active,ssid dev wifi|grep "^yes")
#  case $CURRENT_CON in (yes:Grant_County_Schools)
#    case $@ in (*github.com*) USETORIFY="yes";printf "torify needs to be used!\n";;esac
#  ;;esac

#  if [ $USETORIFY = "yes" ];then
#    GIT_CMD="torify git ${@##*git }"
#    echo $GIT_CMD
#    eval $GIT_CMD
#  else
#    GIT_CMD="git ${@##*git }"
#    echo $GIT_CMD
#    eval $GIT_CMD
#  fi 
#
#  unset GIT_CMD;unset USETORIFY;unset CURRENT_CON
#}

# )

# plugins=(
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# )

# binded keys
bindkey '^[[1;2D' backward-word
bindkey '^[[1;2C' forward-word

alias luamake=/home/jule/tools/lua-language-server/3rd/luamake/luamake
