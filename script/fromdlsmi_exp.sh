#!/bin/bash

#IP=192.168.224.6
#IP=sg2.cs.titech.ac.jp

# directly from nas3
rsync -zarvum  --modify-window=2 --max-size=10M --progress --rsync-path="ssh nas3 rsync" nuke@sg2.cs.titech.ac.jp:/home/nuke/matlab_code/expr/dlsmi/exp/exp6/*.mat  /media/SHARE/titech/sugiyama_lab/expr/dlsmi/exp/exp6/

rsync -zarvum  --modify-window=2 --max-size=10M --progress --rsync-path="ssh nas3 rsync" nuke@sg2.cs.titech.ac.jp:/home/nuke/matlab_code/expr/dlsmi/exp/exp1/  /media/SHARE/titech/sugiyama_lab/expr/dlsmi/exp/exp1/


