#!/bin/bash
#
# This script produces the dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Improve this script by using the value in the automatic variable $USER for the name
# Improve this script by adding some time and day of the week information to the welcome message
#   Use a format like this:
#   It is HH:MM AM on weekday.

###############
# Variables   #
###############
name="Enter your name:"
read -p "$name" myname

title="Enter title:"
read -p "$title" Title
hostname=$(hostname)


###############
# Main        #
###############

echo "Welcome to planet $hostname, "$Title $myname!" "  | cowsay

#Date
date +'%I:%M %p %A'
