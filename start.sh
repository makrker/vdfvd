#!/bin/bash 


if [[ $(command -v brew) == "" ]]; then
    echo "You have not installed Homebrew "
    
 sudo apt install wget -y
 cd || exit #
wget https://raw.githubusercontent.com/makrker/vdfvd/main/main.sh

chmod +x main.sh

./main.sh
else
    echo "You have installed Homebrew"
       
 sudo apt install wget -y
 cd || exit #
wget https://raw.githubusercontent.com/makrker/vdfvd/main/side.sh

chmod +x main.sh

./side.sh

fi