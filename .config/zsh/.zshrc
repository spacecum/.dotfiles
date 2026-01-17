#!/bin/sh

[ -f  "$XDG_CONFIG_HOME/shell/alias" ] && source "$XDG_CONFIG_HOME/shell/alias"
[ -f  "$XDG_CONFIG_HOME/shell/var" ] &&  source "$XDG_CONFIG_HOME/shell/var"
[ -f  "$XDG_CONFIG_HOME/shell/script" ] &&  source "$XDG_CONFIG_HOME/shell/script"

HISTSIZE=1000
SAVEHIST=1000
HISTCONTROL=ignoreboth
HISTFILE="$XDG_CACHE_HOME/zsh_history"

setopt autocd beep interactive_comments # General
setopt extendedglob nomatch notify kshglob globdots # Globbing
setopt append_history inc_append_history share_history # History
setopt menu_complete # Autocomplete menu

zstyle :compinstall filename "$XDG_CONFIG_HOME/.zshrc"
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':fzf-tab:*' use-fzf-default-opts yes

autoload -Uz colors && colors
autoload -U compinit && compinit
autoload -Uz edit-command-line
 
# Add support for vim keybindings
zle -N edit-command-line
bindkey '^E' edit-command-line

# Add syntax highlighting

PROMPT="[ %n %F{red}%~%f ]%(!.#.$) "
RPROMPT="[ %F{green}%?%f | %F{blue}%h%f ]"

clone_or_source https://github.com/zsh-users/zsh-syntax-highlighting.git zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
clone_or_source https://github.com/Aloxaf/fzf-tab fzf-tab/fzf-tab.plugin.zsh
