if [ -f $HOME/.bash_alias ]; then
	source $HOME/.bash_alias
fi

umask 22

export PATH=$HOME/bin:/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/man:$MANPATH

export PS1='[\!:\w]\$ '
export HISTSIZE=4096
export HISTFILESIZE=4096
export HISTCONTROL=ignoreboth
