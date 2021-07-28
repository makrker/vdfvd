#!/bin/bash 

  
    
if [ "$apt" == "" ]; then
   echo "you have apt"
   sudo apt install wget -y
   cd || exit 
   wget https://raw.githubusercontent.com/makrker/vdfvd/main/main.sh
   chmod +x main.sh
  else
  sudo eopkg install wget -y
  
  wget https://raw.githubusercontent.com/makrker/vdfvd/main/solus.sh
  chmod +x solus.sh
   ./solus.sh 
        
    
fi

if [[ "$OSTYPE" == "darwin"* ]]; then
     
      cd || exit #
       wget https://raw.githubusercontent.com/makrker/vdfvd/main/macos.sh
        chmod +x macos.sh

          ./macos.sh
       


    
fi
