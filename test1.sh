#!/bin/bash
sudo apt install -y nsnake 
echo "daugdadawda"
echo "hahahahhahahha lol lol"



while true
do
 echo "Choose an item: a,b or c"
 echo "a: Ask My Name"
 echo "b: Show me Date"
 echo "c: Backup my home directory"
 echo "d: Exit"
 read -sn1
case "$REPLY" in
a) 
  read -p "What is Your Name? " name
echo "Your Name is $name"
;;
b)  echo "lol u use kde noob"
;;
c) echo "i have no clue what a backup is about"
;;
d) exit 0
;;
esac
 read -n1 -p "Press any key to continue"
done