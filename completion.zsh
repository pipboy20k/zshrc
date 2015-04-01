autoload -Uz compinit
compinit

unsetopt menu_complete # do not autoselect the first completion entry

setopt complete_in_word
setopt always_to_end

zstyle ':completion:*' menu select

#tmuxinator (via ruby gem) completion
#source /var/lib/gems/1.9.1/gems/tmuxinator-0.6.7/completion/tmuxinator.zsh
#source $GEMDIR/tmuxinator-0.6.7/completion/tmuxinator.zsh

## case-insensitive (all),partial-word and then substring completion
if [ "x$CASE_SENSITIVE" = "xtrue" ]; then
zstyle ':completion:*' matcher-list 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
unset CASE_SENSITIVE
else
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
fi
zstyle ':completion:*' list-colors ''



# Use caching so that commands like apt and dpkg complete are useable
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path $ZSH/cache/
# Don't complete uninteresting users
zstyle ':completion:*:*:*:users' ignored-patterns \
adm amanda apache at avahi avahi-autoipd beaglidx bin cacti canna \
clamav daemon dbus distcache dnsmasq dovecot fax ftp games gdm \
gkrellmd gopher hacluster haldaemon halt hsqldb ident junkbust kdm \
ldap lp mail mailman mailnull man messagebus mldonkey mysql nagios \
named netdump news nfsnobody nobody nscd ntp nut nx obsrun openvpn \
operator pcap polkitd postfix postgres privoxy pulse pvm quagga radvd \
rpc rpcuser rpm rtkit scard shutdown squid sshd statd svn sync tftp \
usbmux uucp vcsa wwwrun xfs '_*'
# ... unless we really want to.
zstyle '*' single-ignored show
