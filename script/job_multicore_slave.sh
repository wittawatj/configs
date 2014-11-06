#!/bin/bash

# Run one Matlab multicore slave. Intended to be used with srun of Slurm queuing system.

num=$1
cdpath="/nfs/nhome/live/wittawat/SHARE/gatsby/research/code"
#matlab_path="/opt/matlab-R2012b/bin/matlab"

echo "starting a multicore Matlab slave"
matlab -nodesktop -nosplash -singleCompThread -r "cd ${cdpath}; startup; multicoreSlaveLoop(); " 

