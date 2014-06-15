#!/bin/bash

IP=sg2.cs.titech.ac.jp

#rsync  -e ssh -zrltDvu  --modify-window=2 --exclude-from="/home/nuke/script/dlsmi_exclude.txt" --progress /media/SHARE/titech/sugiyama_lab/expr/dlsmi/  nuke@${IP}:/home/nuke/matlab_code/expr/dlsmi/

rsync  -e ssh -zrltDvu  --modify-window=2  --progress /media/SHARE/titech/sugiyama_lab/expr/hsiclasso/ --rsync-path="ssh nas3 rsync"  nuke@${IP}:/home/nuke/matlab_code/expr/hsiclasso/


#ssh $IP 'chmod -c -R 777 /home/nuke/matlab_code/expr/dlsmi/; '


