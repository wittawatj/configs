#!/bin/bash


rsync -zarvum   --modify-window=2 --max-size=10M --progress  /home/nuke/public_html/wikiviz/ wittawat@wittawat.com:/home3/wittawat/public_html/wikiviz/

