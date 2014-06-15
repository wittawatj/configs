#!/bin/bash

#IP=192.168.224.6

IP=sg2.cs.titech.ac.jp

rsync -zarvum  --modify-window=2 --exclude-from="/home/nuke/script/dlsmi_exclude.txt" --max-size=4M --progress --rsync-path="ssh nas3 rsync" /media/SHARE/titech/sugiyama_lab/expr/dlsmi/ nuke@sg2.cs.titech.ac.jp:/home/nuke/matlab_code/expr/dlsmi/


#ssh $IP 'chmod -c -R 777 /home/local/data/nuke; echo "$(date)" > /home/local/data/nuke/smit_dev/last_update_time.txt '


