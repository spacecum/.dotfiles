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
setopt PROMPT_SUBST
# setopt PROMPT_CR

autoload -Uz colors && colors
autoload -U compinit && compinit
autoload -Uz edit-command-line
autoload -Uz run-help  

# Set up the prompt (with git branch name)
zstyle :compinstall filename "$XDG_CONFIG_HOME/.zshrc"
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':fzf-tab:*' use-fzf-default-opts yes
 
# Add support for vim keybindings
zle -N edit-command-line
bindkey '^E' edit-command-line

date 
PROMPT='
 %F{red}%~%f $(git_branch)%F{119}%?%f %F{105}%h%f
%# '

plug https://github.com/zsh-users/zsh-syntax-highlighting.git zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
plug https://github.com/Aloxaf/fzf-tab fzf-tab/fzf-tab.plugin.zsh
source <(fzf --zsh)
( cat ~/.cache/wal/sequences & )
