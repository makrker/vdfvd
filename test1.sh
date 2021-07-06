#!/bin/bash
sudo apt install -y nsnake 
echo "daugdadawda"
echo "hahahahhahahha lol lol"
function update_user 
{
 option=0
 until [ "$option" = "3" ]; do
 echo "  1.) Update username"
 echo "  2.) Update password"
 echo "  3.) Return to menu"

 echo -n "Enter choice: "
 read -r option
 echo "yihohi"
 case $option in
 1 ) update_username;  echo "yr eehehehe" ;;
 2 ) update_password; echo ur "sussye desktop"  ;;
 3 ) main_menu;  exit ;;
 4 ) break ;;
 * ) tput setf 3;echo "Please enter 1, 2 or 3";tput setf 3; 
 esac
#   }
 done
}


