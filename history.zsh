HISTFILE=~/.zsh_histfile
HISTSIZE=10000
SAVEHIST=10000


# ignore duplicates
setopt hist_ignore_dups

# save timestamps in history
setopt extended_history

# incrementally append to history (new sessions get combined history)
setopt append_history inc_append_history

# don't save to history if line has a space prefix
setopt hist_ignore_space



#moving in the history
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

