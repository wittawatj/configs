#!/bin/bash

# nas3 , sg2 IP
#IP=192.168.224.166
IP=sg2.cs.titech.ac.jp

rsync  -e ssh -zrltDvu --modify-window=2 --max-size=20M --exclude-from="/home/nuke/script/dlsmi_exclude.txt" --progress nuke@${IP}:/home/nuke/matlab_code/expr/dlsmi/  /media/SHARE/titech/sugiyama_lab/expr/dlsmi/



