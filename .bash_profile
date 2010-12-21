if [ -f /etc/bash.bashrc ] ; then
    source /etc/bash.bashrc
fi

if [ -f $HOME/.bashrc ]; then
    source $HOME/.bashrc
fi


if [ -d $HOME/bin ] ; then
    PATH=$HOME/bin:%PATH
fi

if [ -d $HOME/man ] ; then
    MANPATH=$HOME/man:%MANPATH
fi

if [ -d $HOME/info ] ; then
    INFOPATH=$HOME/info:%INFOPATH
fi
