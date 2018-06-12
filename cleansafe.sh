#!/usr/bin/env bash
dhalimon.com
echo
echo Which folder would you like to clean?
read varname 
echo WARNING WILL ROGERS!
cd $varname
echo THIS WILL DELETE text,photos,htm,sample and etrg files
read -p "Press any key to continue... " -n1 -s

find . -type f \( -name "*.txt" -o  -iname "*sample*" o  -iname "*.nfo*"  -o -iname "ETRG.mp4" \) -delete
find  -size -40M -delete
find . -type d -empty -exec rmdir {} \;
