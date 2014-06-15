#!/bin/bash

#IP=192.168.224.6
#IP=sg2.cs.titech.ac.jp

#rsync  -e ssh -zarvum  --modify-window=2 --exclude-from="/home/nuke/script/smitdev_exclude.txt" --progress nuke@${IP}:/home/nuke/matlab_code/expr/smit/  /media/SHARE/titech/sugiyama_lab/expr/smit  


# directly from nas3
rsync -zarvum  --modify-window=2 --exclude-from="/home/nuke/script/smitdev_exclude.txt" --max-size=4M --progress --rsync-path="ssh nas3 rsync" nuke@sg2.cs.titech.ac.jp:/home/nuke/matlab_code/expr/smit/  /media/SHARE/titech/sugiyama_lab/expr/smit/  



