#!/bin/bash


rsync  -e ssh -zrltDvu --modify-window=1  --exclude=".*" --exclude-from="/home/nuke/script/exclude_files.txt" /media/nukeext/  /media/SHARE
 

