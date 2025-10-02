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
alias info='info --vi-keys'
alias ..='cd ..'
alias py='python'
alias doc='cd ~/Documents/'
alias dow='cd ~/Downloads/'

### Git aliases
alias gl='git log'
alias gs='git status'
alias gc='git commit'
alias ga='git add'
alias nterm='nvim -c terminal'


PS1='[ \u \[\e[31m\]\w\[\e[0m\] ]$ '

alias re='tmux source ~/.config/tmux/tmux.conf'
