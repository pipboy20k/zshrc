autoload zmv
for func in $^fpath.zwc(N-.r:); autoload -U -w $func
alias zmz='noglob zmv'
alias zcp='noglob zmv -C'
alias zln='noglob zmv -L'
alias zsy='noglob zmv -Ls'
# mkdir, cd into it
mkcd () {
    mkdir -p "$*"
    cd "$*"
}
