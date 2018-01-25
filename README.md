# Network-Keeper
Code written in bash to use a macro in order to keep wifi on
-Using Firefox and Rasbian (Some initial setup based on task)


Firefox Setup:
-Download firefox and make sure it is set as your primary browser
-Search "about:config" in firefox and toggle all "browser.tabs.remote.autostart.x" to false.
  -(This disables all multiprocess windows inorder for the macro to work)
  
iMacros Setup:
-Add iMacros extension to firefox
-Record a new macro of the task or network login protocol (Disclaimer: You will be responsible for breaking any rules against automation)
-Right click on the macro, bookmark it, and copy the bookmark link for use in the code. 

Bash Setup:
-sudo chmod +x NetworkKeeper.sh
-sudo sh NetworkKeeper.sh

FAQ
Q: I did the setup, but why won't my macro extension show up when I run the code?
A: xdg open might not be opening up the version of firefox you modified. Just redo the about:config step and iMacros setup.
Q: Why does the iMacro's bookmark only take me to a search and not work?
A: Make sure you have multiproccess windows disabled for your browser.
