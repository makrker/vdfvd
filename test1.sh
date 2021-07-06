#!/bin/bash

echo "www.co"



function update_user 
{
 option=0
 until [ "$option" = "3" ]; do
 echo "  1.) Update username"
 echo "  2.) Update password"
 echo "  3.) Return to menu"

 echo -n "Enter choice: "
 read -r option
 echo ""
 case $option in
 1 ) update_username;  yr eehehehe ;;
 2 ) update_password; echo ur sussye desktop  ;;
 3 ) main_menu;  break ;;
 4 ) break ;;
 * ) tput setf 3;echo "Please enter 1, 2 or 3";tput setf 3; 
 esac
#   }
 done
}

function main_menu 
{
option=0
until [ "$option" = "4" ]; do
echo "  1.) Add user"
echo "  2.) Remove user"
echo "  3.) Update user"
echo "  4.) Quit"

echo -n "Enter choice: "
read -r option
echo ""
case $option in
    1 ) add_user ; ech0 "daugdadawda"  ;;
    2 ) remove_user ; echo "ahdahlad" ;;
    3 ) update_user ; echo "ahdadhdahwhdiedohood" ;;
    4 ) exit;;
    * ) tput setf 4;echo "Please enter 1, 2, 3, or 4";tput setf 4; 
esac
done
 }

main_menu

