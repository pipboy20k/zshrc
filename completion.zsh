autoload -Uz compinit
compinit

zstyle ':completion:*' menu select

#tmuxinator (via ruby gem) completion
#source /var/lib/gems/1.9.1/gems/tmuxinator-0.6.7/completion/tmuxinator.zsh
source $GEMDIR/tmuxinator-0.6.7/completion/tmuxinator.zsh
