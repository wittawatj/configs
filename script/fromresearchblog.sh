#!/bin/bash


#IP=nukevps
IP=wittawat.com


rsync  -e ssh -zavc --modify-window=2 --exclude=".svn" --exclude-from="/nfs/home1/wittawat/script/exclude_upresearchblog.txt"  --progress  nuke@${IP}:/home/nuke/hakyll_blog/ /nfs/nhome/live/wittawat/SHARE/blog/hakyll_blog/


#rsync  -e ssh -zrltDvu --modify-window=2 --exclude=".svn" --exclude-from="/home/nuke/script/exclude_upresearchblog.txt" --delete --progress /media/SHARE/blog/hakyll_blog/_site/ ${IP}:/home/nuke/public_html/
