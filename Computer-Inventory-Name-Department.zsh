#!/bin/zsh --no-rcs
#####################################################################
#
# 	Script Name		- Computer-Inventory-Name-Department.zsh
# 	Author			- Nick van Jaarsveld
# 	Organisation	- Pro Warehouse
# 	Version			- 0.1
# 	Description
#	
#
#####################################################################
# GLOBAL VARIABLES
dialog="/usr/local/bin/dialog"

title="${4:-"Inventory Information"}"
icon="${5:-"https://euc1.ics.services.jamfcloud.com/icon/hash_50495076368c8cc12f021395eeda1fca39092709b24c0360bee9a810e8efdba5"}"
bannerimage="${6:-"https://probaseline.jamfcloud.com/api/v1/branding-images/download/14"}"
selecttitle="${7:-"Department,required"}"
selectvalues="${8:-"Choose department, ---, Engineering, Marketing, Sales"}"

message="Please enter your full name and select your department below. This is for inventory purposes."
infobox="#### Support \n - +31 88 776 70 40  \n#### Your Mac \n - macOS {osname} ({osversion}) \n - {computermodel}  \n - {serialnumber}"
textfield="Computer Name,value=Mac John Appleseed,required"
button1text="Continue"


#####################################################################
# FUNCTIONS


#####################################################################
# AUTHENTICATION


#####################################################################
# CORE SCRIPT LOGIC
$dialog \
--title "$title" \
--icon "$icon" \
--bannerimage "$bannerimage" \
--button1text "$button1text" \
--message "$message" \
--infobox "$infobox" \
--selecttitle "$selecttitle" \
--selectvalues "$selectvalues" \
--selectdefault "Choose department" \
--textfield "$textfield" \
--width 960 \
--height 700
