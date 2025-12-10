HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep extendedglob nomatch notify
bindkey -v
zstyle :compinstall filename '/home/Mani/.zshrc'

autoload -Uz compinit
compinit


export EDITOR=nvim
export VISUAL=nvim
export MANPAGER="nvim +Man!"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias tree='tree -C'
alias vi=nvim
alias vim=nvim
alias fzf='fzf --preview "bat --color=always {}" | xargs -I + nvim +'
alias ll='ls -lA'
alias sudo='sudo '
alias info='info'
alias ..='cd ..'
alias py='python'
alias doc='cd ~/Documents/'
alias dow='cd ~/Downloads/'
alias nterm='nvim -c terminal'

### Git aliases
alias gl='git log'
alias gs='git status'
alias gc='git commit'
alias ga='git add'

alias weather="curl wttr.in/India"

PROMPT="[ %n %F{red}%~%f ]%(!.#.$) "
RPROMPT="[ %F{green}%?%f | %F{blue}%h%f ]"
