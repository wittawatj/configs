#!/bin/bash


rsync -zarvum   --modify-window=2 --max-size=10M --progress  /home/nuke/public_html/wittawat_cv/ wittawat@wittawat.com:/home3/wittawat/public_html/cv/

ssh wittawat@wittawat.com "chmod 755 /home3/wittawat/public_html/cv/"
