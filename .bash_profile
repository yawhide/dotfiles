# this file is executed for login shells
# (when you start up your machine on most systems,
# or every new window on macs)

# for npm path
export PATH=/usr/local/share/npm/bin:$PATH

# for pkgconfig path
export PKG_CONFIG_PATH="/opt/local/lib/pkgconfig:$PKG_CONFIG_PATH"

# for gitcompletion
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
fi

export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATHexport PATH=/usr/local/bin:$PATH

# Setting PATH for Python 2.7
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/2.7/bin:${PATH}"
export PATH

# Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin" 

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

# golang-style path
export GOPATH=$HOME/projects/golang
export PATH=$PATH:$GOPATH/bin

# set macvim as editor
export EDITOR="mvim -v"

# adding custom bin functions to path
# export PATH=$PATH:/Users/Joshua/bin

# for ruby 2.1.0 by default, for osx
# export PATH=/Users/Joshua/.rvm/gems/ruby-2.1.0/bin:$PATH
rvm use 2.1.0

[[ -r ~/.bashrc ]] && . ~/.bashrc
[[ -r ~/.profile ]] && . ~/.profile
