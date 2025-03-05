if [ -f $HOME/.bash_alias ]; then
	source $HOME/.bash_alias
fi

#if [ ! -n "${TERM}" ]; then
#  TERM=cygwin
#fi


umask 22

unset TMP
unset TEMP

export PS1='[\u@\h \W]\\$ '
export PATH=$HOME/bin:/opt/homebrew/opt/ruby/bin:/opt/homebrew/bin:/opt/local/bin:/opt/local/sbin:$PATH
export MANPATH=/opt/local/man:$MANPATH
export TMP=/tmp
export TEMP=/tmp
export TMPDIR=/tmp
#export LC_CTYPE=ja_JP.UTF-8
#export LANG=ja_JP.UTF-8
export TZ=JST-9
#export MAKE_MODE=unix
#export SHELL=/bin/bash
export PAGER=less
#export OUTPUT_CHARSET=sjis
#export JLESSCHARSET=japanese-sjis
export EDITOR=emacs
export CVSEDITOR=emacs
export HISTSIZE=4096
export HISTFILESIZE=4096
export HISTCONTROL=ignoreboth

shopt -s nocaseglob
shopt -s histappend
shopt -s cdspell

function c
{
	cd $1 && ls | head -n 20
}

#echo -n "ssh-agent: "
#source $HOME/.ssh-agent-info
#ssh-add -l >&/dev/null
#if [ $? == 2 ] ; then
#  echo -n "ssh-agent: restart..."
#  ssh-agent > $HOME/.ssh-agent-info
#  source $HOME/.ssh-agent-info
#fi
#if ssh-add -l >& /dev/null : then
#  echo "ssh-agent: Indentity is already stored."
#else
#  ssh-add
#fi


# This loads RVM into a shell session.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
