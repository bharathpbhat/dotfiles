source ~/.profile
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin
alias vim="mvim -v"
alias vi="mvim -v"
export PATH=$PATH:/usr/local/mysql/bin

# Go specifics
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

##
# Your previous /Users/bharathbhat/.bash_profile file was backed up as /Users/bharathbhat/.bash_profile.macports-saved_2014-04-30_at_14:29:01
##

# MacPorts Installer addition on 2014-04-30_at_14:29:01: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# Java Home
export JAVA_HOME=$(/usr/libexec/java_home)

# Maven
export M2_HOME=/usr/local/apache-maven/apache-maven-3.2.1
export M2=$M2_HOME/bin
export PATH=$M2:$PATH

# Hadoop
export HADOOP_HOME=/usr/local/hadoop
export HADOOP_VERSION=2.4.0

# Android
export ANDROID_PLATFORM_TOOLS_HOME=/Applications/Android\ Studio.app/sdk/platform-tools
export ANDROID_TOOLS_HOME=/Applications/Android\ Studio.app/sdk/tools
export PATH=$ANDROID_TOOLS_HOME:$ANDROID_PLATFORM_TOOLS_HOME:$PATH
export ANDROID_HOME=/Applications/Android\ Studio.app/sdk
eval "$(direnv hook bash)"

export PATH="$PATH:$HOME/bin"
# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

function parse_git_dirty {
  [[ $(git status --porcelain 2> /dev/null | tail -n1) != "" ]] && echo "(*)"
}
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[1;31m\]\$(parse_git_dirty)\[\033[00m\]$ "
export ECTO_EDITOR=vi

export SCALA_HOME="/usr/local/share/scala-2.11.8"
export PATH="${PATH}:${SCALA_HOME}/bin"

source ~/.rvm/scripts/rvm
