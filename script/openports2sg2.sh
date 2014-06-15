#!/bin/bash

# Map localhost:400xy to sim(xy):22 in Sugiyama labs
# The mapping is done through sim2 (sg2.cs.titech.ac.jp)


for i in $(seq 24 60)
do
	fromp=$((40000 + $i))
	ssh -f -N -L $fromp:sim${i}:22 sg2.cs.titech.ac.jp 
	echo "Port ${fromp} opened"

done


