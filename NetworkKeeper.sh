#!/bin/sh
INPUT_STRING=hello
while [ "$INPUT_STRING" != "bye" ]
do
  ping -c 1 google.com
  if [ $? -eq 0 ]; 
  then 
    sleep 5s
    echo
    echo "~~~~NETWORK IS ONLINE~~~~~";
    echo
  else
    export DISPLAY=:0
    xhost localhost
    echo Need to boot up
    xdg-open 'imacros://run/?m=%23Current.iim'
    sleep 5s	
  fi
done
