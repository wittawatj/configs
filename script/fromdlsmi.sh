#!/bin/bash

#IP=192.168.224.6
#IP=sg2.cs.titech.ac.jp

# directly from nas3
rsync -zarvum  --modify-window=2 --exclude-from="/home/nuke/script/dlsmi_exclude.txt" --max-size=4M --progress --rsync-path="ssh nas3 rsync" nuke@sg2.cs.titech.ac.jp:/home/nuke/matlab_code/expr/dlsmi/  /media/SHARE/titech/sugiyama_lab/expr/dlsmi/



