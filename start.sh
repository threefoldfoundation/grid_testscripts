set +x
SRC=""
if [ -d "$PWD/scripts" ] ; then
    if [ -d "$PWD/templates" ] ; then
        SRC="$PWD"
    fi
fi

if [ "$SRC" == "" ]; then
    SRC=~/grid_testscripts
fi


if [ ! -d "$SRC" ] ; then
    echo "cannot find $SRC"
    echo "make sure the test scripts are installed"
    echo "install them by using: ... TODO"
    return 1
fi

cd $SRC

export PATH=$SRC/scripts:$PATH

export PS1="TEST: \h .../\W : "

export INIT="1"

export BASE=$SRC


#make sure crystal tools are installed
install_ct

cd $BASE
