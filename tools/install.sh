#!/bin/bash


if [[ "$OSTYPE" != "darwin"* ]] && [[ "$OSTYPE" != "linux-gnu"* ]]; then
    echo OS is not supported ..
    exit 1
fi

if [[ "$OSTYPE" == "linux-gnu"* ]]; then

    if ! [ -x "$(command -v curl)" ]; then
    apt install curl -y
    fi    

    if ! [ -x "$(command -v git)" ]; then
    apt install git -y
    fi

fi
    

if [[ "$OSTYPE" == "darwin"* ]]; then

    set +ex

    if ! [ -x "$(command -v brew)" ]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    fi
    
    brew install libyaml

    if ! [ -x "$(command -v git)" ]; then
    brew install git
    fi

fi

ssh-keygen -F github.com || ssh-keyscan github.com >> ~/.ssh/known_hosts
    
export DEST=~/code/github/threefoldfoundation
if [ -d "$DEST/grid_testscripts" ] ; then
    cd $DEST/grid_testscripts
    echo " - grid_testscripts already there, pulling it .."
    git pull
else
    mkdir -p $DEST
    cd $DEST
    git clone "https://github.com/threefoldfoundation/grid_testscripts"    
fi

echo "NOW DO"
echo "cd ~/code/github/threefoldfoundation/grid_testscripts;source start.sh"


