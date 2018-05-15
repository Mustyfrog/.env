# System-wide .bashrc file for interactive bash(1) shells.

# To enable the settings / commands in this file for login shells as well,
# this file has to be sourced in /etc/profile.

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

export $PATH="$PATH:/home/mustyfrog/Documents/Cours/.env/bin"
export $INCLUDE_PATH="/home/mustyfrog/Documents/Cours/.env/include"
export $LD_BINARY_PATH="$LD_BINARY_PATH:/home/mustyfrog/Documents/Cours/.env/lib"


