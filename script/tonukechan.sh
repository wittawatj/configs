#!/bin/bash

IP=nukechan.homeip.net
#IP=192.168.1.21
#10.42.43.10

rsync  -e ssh -zrltDvu  --delete --modify-window=1 --max-size=1m --exclude="*.mat" --exclude-from="/home/nuke/script/dlsmi_exclude.txt" --progress /media/SHARE/titech/sugiyama_lab/expr/dlsmi  nuke@${IP}:/home/nuke/back/


rsync  -e ssh -zrltDvu --delete --modify-window=2 --max-size=1m --exclude="*.mat" --exclude-from="/home/nuke/script/smitdev_exclude.txt" --progress /media/SHARE/titech/sugiyama_lab/expr/smit  nuke@${IP}:/home/nuke/back/

