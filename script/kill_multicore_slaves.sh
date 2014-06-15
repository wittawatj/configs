#!/bin/bash

# This script is a counterpart of start_multicore_slaves.sh. It kills all the started Matlabs used for multicore slaves. It does not kill other Matlabs.

process_ids=$( ps a | grep -i "matlab" | grep -i multicoreslave  | awk '{print $1}')
for id in $process_ids
do

	kill $id;
	echo "Killed process $id."
done

echo "Use start_multicore_slaves.sh #num_of_slaves to start them again."
