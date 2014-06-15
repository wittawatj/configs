#!/bin/bash

# nas3 IP
IP=192.168.224.6
echo "disabled"
#rsync  -e ssh -zrltDvu  --delete --modify-window=2 --exclude-from="/home/nuke/script/dlsmi_exclude.txt" --progress /media/SHARE/titech/sugiyama_lab/expr/dlsmi/  nuke@${IP}:/home/nuke/matlab_code/expr/dlsmi/



