# 
# 
# My zshrc made for arch and it's forks. Contains syntax highlighting, some aliases and the starship prompt.
#
#
# ~/.zshrc

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt beep nomatch
bindkey -e
#
#
#
zstyle :compinstall filename '/home/fanis/.zshrc'

autoload -Uz compinit
compinit



### ALIASES ###


# Pacman & the AUR
alias update='sudo pacman -Syu'
alias install='sudo pacman -S'
alias remove='sudo pacman -Rs'
alias aurinstall='yay -S'
alias aurdel='yay -Rs'

# ls with flags
alias ls='ls -lah --color=auto'

# cd navigation
alias .1='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'

# mkdir creates parent folders
alias mkdir='mkdir -pv'

# safety checks
alias mv='mv -i'
alias cp='cp -i'
alias rm='rm i'
alias ln='ln -i'

alias vim='nvim'

neofetch

eval "$(starship init zsh)"
# End of lines added by compinstall
source /home/fanis/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
