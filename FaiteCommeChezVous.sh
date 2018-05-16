#!/bin/bash

#Deploy my dayum .env

#Add our /bin path for binaries 
export PATH=$PWD/bin:$PATH

#Indicate location of shared Library (for firefox Libhunspell-1.3.so.0)
export LD_LIBRARY_PATH=$PWD/share

#Indicate wich text editor to use (Vim for the boss)
export EDITOR=vim


#Create a child bash to implement all my exports because when we change environment variables
#Copie du fichier des bookMark Firefox (manque plus qu'à faire la backup dans Firefox)
#Pour backup (dans Firefox) => View all bookMark => Restore => May 15 
touch MaisQueFaitIl
ls ~/.mozilla/firefox|grep .default > MaisQueFaitIl
boutDeChemin=$(cat MaisQueFaitIl)
cp files/meinBookmarks.json ~/.mozilla/firefox/$boutDeChemin/bookmarkbackups/
rm MaisQueFaitIl

#in a bash script, it creates a child process and we it's done, changes are deleted with the process
#So i'm creating a new bash process with theses changes
exec /bin/bash





