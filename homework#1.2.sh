#!/bin/bash
#
# DevOps training #7 2019 EPAM
#
# Homework #1.2
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
	    groupadd $proj
	    chown :$proj $proj
	    chmod -R 3770 $proj # Create SGID & Sticky bits


            # Grant rights for Infomanagers
            for u in ${INFOMANAGERS[@]}
            do
	    adduser $u $proj
            done
done

exit 0
