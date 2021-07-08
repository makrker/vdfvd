#!/bin/bash 

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
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
            cd /home/"$USER" || exit 
            wget https://raw.githubusercontent.com/makrker/vdfvd/main/side.sh

             chmod +x side.sh

              ./side.sh


    fi
fi

if [[ "$OSTYPE" == "darwin"* ]]; then
     
      cd || exit #
       wget https://raw.githubusercontent.com/makrker/vdfvd/main/macos.sh
        chmod +x macos.sh

          ./macos.sh
       


    
fi
