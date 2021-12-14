#!/bin/zsh

function runInstallScript () {
    echo "Are you sure you want to install? (Y/n)"

    read answer
    # If empty answer default to Y
    if [[ $answer = "" ]] ;then
        answer="Y"
    elif echo "$answer" | grep -iq "^n"; then
    fi

    if echo "$answer" | grep -iq "^y" ;then
        echo "Installing vimrc to ~/.vimrc..."
        cp ./vimrc ~/.vimrc
        echo "Installing zshrc to ~/.zshrc..."
        cp ./zshrc ~/.zshrc
        source ~/.zshrc
        exit 0
    elif echo "$answer" | grep -iq "^n"; then
        echo "Exiting installation."
        exit 1
    else
        echo ""
        echo "Not a suitable answer! Enter Y/y or N/n."
        runInstallScript
    fi
}

echo "This is a quick install for mysterio setup"
runInstallScript
