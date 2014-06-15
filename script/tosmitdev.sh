#!/bin/bash

#IP=192.168.224.6
IP=sg2.cs.titech.ac.jp

rsync -zarvum  --modify-window=2 --exclude-from="/home/nuke/script/smitdev_exclude.txt" --progress --rsync-path="ssh nas3 rsync" /media/SHARE/titech/sugiyama_lab/expr/smit/ nuke@sg2.cs.titech.ac.jp:/home/nuke/matlab_code/expr/smit/    


#rsync   -e ssh -zrltDvu --modify-window=2 --exclude=".svn" --exclude-from="/home/nuke/script/exclude_files.txt" --progress /media/SHARE/titech/sugiyama_lab/expr/nukefun/  nuke@${IP}:/home/nuke/matlab_code/nukefun  

#ssh $IP 'chmod -c -R 777 /home/local/data/nuke; echo "$(date)" > /home/local/data/nuke/smit_dev/last_update_time.txt '


