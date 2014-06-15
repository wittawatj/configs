#!/bin/bash


IP=sg2.cs.titech.ac.jp

rsync  -e ssh -zrltDvu --modify-window=2 --exclude=".svn" --exclude-from="/home/nuke/script/exclude_files.txt" --progress /media/SHARE/titech/sugiyama_lab/expr/lsmi_fs/  nuke@${IP}:/home/nuke/matlab_code/expr/lsmi_fs  

rsync   -e ssh -zrltDvu --modify-window=2 --exclude=".svn" --exclude-from="/home/nuke/script/exclude_files.txt" --progress /media/SHARE/titech/sugiyama_lab/expr/nukefun/  nuke@${IP}:/home/nuke/matlab_code/nukefun  

rsync   -e ssh -zrltDvu --modify-window=2 --exclude=".svn" --exclude-from="/home/nuke/script/exclude_files.txt" --progress /media/SHARE/titech/sugiyama_lab/expr/hsic/  nuke@${IP}:/home/nuke/matlab_code/expr/hsic  

rsync   -e ssh -zrltDvu --modify-window=2 --exclude=".svn" --exclude-from="/home/nuke/script/exclude_files.txt" --progress /media/SHARE/titech/sugiyama_lab/expr/lsmi/  nuke@${IP}:/home/nuke/matlab_code/expr/lsmi


