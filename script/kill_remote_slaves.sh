#!/bin/bash

# This script is a counterpart of spawn_remote_multicore_slaves. 
# It kills all the started Matlabs used for multicore slaves. It does not kill other Matlabs.

scancel -n "multicore_slave"

echo "Use spawn_remote_multicore_slaves.sh  #num_of_slaves to start them again."
