# this file is executed for interactive non-login shells
# (when you open a new window/session)

export CLICOLOR=1

# custom prompt
export PS1="\d \A \W\$ " 
# canonical -> "\h:\W \u\$ "

# load defined aliases
[[ -r ~/.bash_aliases ]] && . ~/.bash_aliases

# custom functions (consider writing them to bin/)
hello()
{
    echo "Hello $1, let us be a friend." ;
}

grepr()
{
    echo ""; # space things out a bit for scanning
    grep -r "$1" $2 --color -n;
    echo "";
}

google()
{
    open https://encrypted.google.com/#q=$1+$2+$3+$4+$5+$6+$7+$8+$9;
}

github()
{
    open https://github.com/search?q=$1+$2+$3+$4+$5+$6+$7+$8+$9;
}

myargs()
{
    i=0
    for arg in "$@"; do
        echo "arg$i=$arg"
        let ++i
    done
}

vcsv()
{
    sed 's/,,/, ,/g;s/,,/, ,/g' $1 | column -s, -t | less -#2 -N -S
}
