#!/bin/bash
echo "Bootstrap prozess"
#Install brew if not installed
echo " - brew"
if which brew  2>&1 >/dev/null; then
    echo "brew is already installed"
else
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    if which brew  2>&1 >/dev/null; then
        echo "brew installation successful"
    else
        echo "something went wrong..."
        exit 1
    fi
    brew tap homebrew/cask-cask
    sudo chown -R $(whoami) /usr/local/lib/pkgconfig
    chmod u+w /usr/local/lib/pkgconfig
fi
echo " - ansible"
if which ansible 2>&1 >/dev/null; then
    echo "ansible is already installed"
else
    brew install ansible    
    if which brew  2>&1 >/dev/null; then
        echo "ansible installation successful"
    else
        echo "something went wrong..."
        exit 1
    fi
fi