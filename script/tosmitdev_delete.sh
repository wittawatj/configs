#!/bin/bash

# nas3 IP
#IP=192.168.224.6
IP=sg2.cs.titech.ac.jp


rsync  -e ssh -zarvu  --delete --modify-window=2 --exclude-from="/home/nuke/script/smitdev_exclude.txt" --progress /media/SHARE/titech/sugiyama_lab/expr/smit/  nuke@${IP}:/home/nuke/matlab_code/expr/smit/


#ssh $IP 'chmod -c -R 777 /home/local/data/nuke; echo "$(date)" > /home/local/data/nuke/smit_dev/last_update_time.txt '


