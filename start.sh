#!/bin/bash 

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  
    
if [ "$apt" == "" ]; then
   echo "you have apt"
  
     sudo apt install wget -y
      cd || exit #
       wget https://raw.githubusercontent.com/makrker/vdfvd/main/main.sh
        chmod +x main.sh
      else 
      
     sudo apt install wget -y
      cd || exit #
       wget https://raw.githubusercontent.com/makrker/vdfvd/main/solus.sh
        chmod +x solus.sh
      
        
    fi
fi

if [[ "$OSTYPE" == "darwin"* ]]; then
     
      cd || exit #
       wget https://raw.githubusercontent.com/makrker/vdfvd/main/macos.sh
        chmod +x macos.sh

          ./macos.sh
       


    
fi
