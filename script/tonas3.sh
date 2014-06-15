#!/bin/bash

# nas3 IP
IP=192.168.224.6

rsync  -e ssh -zrltDvu --modify-window=2 --exclude=".svn" --exclude-from="/home/nuke/script/exclude_files.txt" --progress /media/SHARE/titech/sugiyama_lab/expr/  nuke@${IP}:/home/nuke/matlab_code/expr/

#rsync   -e ssh -zrltDvu --modify-window=2 --exclude=".svn" --exclude-from="/home/nuke/script/exclude_files.txt" --progress /media/SHARE/titech/sugiyama_lab/expr/nukefun/  nuke@${IP}:/home/nuke/matlab_code/nukefun  



