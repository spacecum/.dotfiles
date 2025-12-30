HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep extendedglob nomatch notify kshglob
# bindkey -v
zstyle :compinstall filename '/home/Mani/.zshrc'

autoload -Uz compinit && compinit

testff="someval"

export EDITOR=nvim
export VISUAL=nvim
export MANPAGER="nvim +Man!"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias tree='tree -C'
alias vim='nvim'
alias vi=vim
alias fzf='fzf --preview "bat --color=always {}" | xargs -I + nvim +'
alias ll='ls -lA'
alias sudo='sudo '
alias py='python'
alias nterm='nvim -c terminal'
alias open='xdg-open'
alias hist="history"
alias man='man '

alias weather="curl wttr.in/India"

PROMPT="[ %n %F{red}%~%f ]%(!.#.$) "
RPROMPT="[ %F{green}%?%f | %F{blue}%h%f ]"
