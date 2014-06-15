#!/bin/bash

# Launch multiple jobs (through Slurm), each containing one Matlab running startmulticoreslave preparing to be a slave in multicore package

num=$1
cdpath="/nfs/nhome/live/wittawat/SHARE/gatsby/research/code"
matlab_path="/opt/matlab-R2012b/bin/matlab"
for i in $(seq 1 $num)
do
	srun  -o /dev/null -J "multicore_slave" --time=15:00:00 job_multicore_slave.sh &
done 
echo "Check squeue and make sure to see job name = multicore_slave"
