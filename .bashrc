if [ -f $HOME/.bash_alias ]; then
	source $HOME/.bash_alias
fi

umask 22

unset TMP
unset TEMP

export PATH=$HOME/bin:/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/man:$MANPATH
export TMP=/tmp
export TEMP=/tmp
export TMPDIR=/tmp

export PS1='[\u@\h \W]\\$ '
export HISTSIZE=4096
export HISTFILESIZE=4096
export HISTCONTROL=ignoreboth

shopt -s nocaseglob
shopt -s histappend
shopt -s cdspell
