#!/bin/bash

# Launch multiple screen commands, each containing one Matlab running startmulticoreslave preparing to be a slave in multicore package

num=$1
cdpath="/nfs/nhome/live/wittawat/SHARE/gatsby/research/code"
#matlab_path="/opt/matlab-R2012b/bin/matlab"
matlab_path="/opt/matlab-R2014a/bin/matlab"
for i in $(seq 1 $num)
do
	echo "starting a multicore Matlab slave on screen #${i}"
	screen -dmS "matlab_slave${i}" ${matlab_path} -nodesktop -nosplash -r "cd ${cdpath}; startup; multicoreSlaveLoop(); " 
done 
screen -list
echo "Use kill_multicore_slaves.sh too kill all multicore slaves."
