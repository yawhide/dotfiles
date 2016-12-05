alias startpostgres='pg_ctl -D /usr/local/var/postgres -l logfile start' 
#Enable PostGres simple start

alias stoppostgres='pg_ctl -D /usr/local/var/postgres stop -s -m fast' 
#Enable PostGres simple stop

# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
alias l="gls -lAh -F --color"

# Pipe my public key to my clipboard.
alias pubkey="more ~/.ssh/id_rsa.pub | pbcopy | echo '=> Public key copied to pasteboard.'"

# Open today's daypages journal
alias td="vim ~/Dropbox/daypages/$(date +%Y-%m-%d).txt"
