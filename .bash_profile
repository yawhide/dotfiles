export PATH=/usr/local/share/npm/bin:$PATH
export PKG_CONFIG_PATH="/opt/local/lib/pkgconfig:$PKG_CONFIG_PATH"
export CLICOLOR=1
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATHexport PATH=/usr/local/bin:$PATH

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export GOPATH=$HOME/projects/golang
export PATH=$PATH:$GOPATH/bin
export EDITOR="vim"
[[ -r ~/.bashrc ]] && . ~/.bashrc
