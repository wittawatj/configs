#!/bin/bash


# Upload memo files to avarua server (wittawat.com/smir/)


rsync -e ssh -zarvu --progress --delete /media/SHARE/titech/sugiyama_lab/smir_exp_memo/web/ wittawatj@avarua.dreamhost.com:/home/wittawatj/wittawat.com/smir/  

#ssh $IP 'chmod -c -R 777 /home/local/data/nuke; echo "$(date)" > /home/local/data/nuke/smit_dev/last_update_time.txt '


