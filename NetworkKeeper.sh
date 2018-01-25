#!/bin/sh
INPUT_STRING=hello | \
#Initiating a never ending loop to take ping
while [ "$INPUT_STRING" != "bye" ] 
do | \
  #Using ping command to check if there is connection between 
  ping -c 1 google.com | \
  #If a connection is present, will display the ping stats, print the Network is up, and pause for 5 seconds before the next connection check
  if [ $? -eq 0 ]; 
  then 
    echo
    echo "~~~~NETWORK IS ONLINE~~~~~";
    echo
    sleep 5s | \
    #If the connection is not established (network is down), will open firefox, run the macro to reestablish network, and pause for 5 seconds before the next connection check
  else
    export DISPLAY=:0
    xhost localhost
    echo Need to reconnect | \
    #Set this link to the bookmarked macro (Make sure to check out the README.md file)
    xdg-open 'imacros://run/?m=YOURMACRO.iim'
    sleep 5s	
  fi
done
