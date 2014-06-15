#!/bin/bash

rsync -zarvum  --modify-window=2 --max-size=10M --progress its100@ict.siit.tu.ac.th:/home/its100/public_html/  /home/nuke/public_html/its100/



