
[ -f  "$XDG_CONFIG_HOME/shell/alias" ] && source "$XDG_CONFIG_HOME/shell/alias"
[ -f  "$XDG_CONFIG_HOME/shell/var" ] &&  source "$XDG_CONFIG_HOME/shell/var"

HISTSIZE=1000
SAVEHIST=1000
HISTCONTROL=ignoreboth
HISTFILE="$XDG_CACHE_HOME/zsh_history"

setopt autocd beep interactive_comments

# Globbing
setopt extendedglob nomatch notify kshglob globdots

# History
setopt append_history inc_append_history share_history

# Autocomplete menu
setopt menu_complete

zstyle :compinstall filename "$XDG_CONFIG_HOME/.zshrc"

autoload -Uz compinit && compinit
autoload -Uz colors && colors
# autoload -Uz edit-command-line
# 
# # Add support for vim keybindings
# zle -N edit-command-line
# bindkey '' edit-command-line
# # Add syntax highlighting

PROMPT="[ %n %F{red}%~%f ]%(!.#.$) "
RPROMPT="[ %F{green}%?%f | %F{blue}%h%f ]"
