#!/bin/bash

#Clearing JSON log files located in the /var/lib/docker/containers/ directory and subdirectories up to a depth of 2. (hence -maxdepth 2) 

find /var/lib/docker/containers/ -maxdepth 2 -name '*-json.log' -type f -size +0 -exec sh -c 'echo """" > ""$1""' -- {} \;