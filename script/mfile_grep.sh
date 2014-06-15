#!/bin/bash

# grep keyboards from all .m files


find $1 -type f -name "*.m" | xargs grep --color -B 1 -A 1 -n $2 
