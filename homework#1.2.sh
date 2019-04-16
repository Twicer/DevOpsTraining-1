#!/bin/bash
#
# DevOps training #7 2019 EPAM
#
# Homework #1.2: Sticky bit 
#
# Author: Pereskokov Vladimir 

# Environments
PROJECTS=(proj1 proj2 proj3) 
INFOMANAGERS=(i1 i2 i3)

# Directory for All Projects
mkdir /projects
cd /projects

# Create All users
for user in ${INFOMANAGERS[@]}
do
	    useradd $user 
done

# Create Projects dir
for proj in ${PROJECTS[@]} 
do
            mkdir $proj
	   #chown :$proj $proj
	    chmod -R 5770 $proj 
done

# Grant rights            
# Rights for Infomanagers
for u in ${INFOMANAGERS[@]}
do
	setfacl -R -m u:$u:rwx /projects
done

exit 0
