#!/bin/bash
#
# DevOps training #7 2019 EPAM
#
# Homework #1: ACL Task   
#
# Author: Pereskokov Vladimir 

# Environments
PROJECTS=(proj1 proj2 proj3)
DEVELOPERS=(r1 r2 r3 r4 r5)
ANALYTICS=(a1 a2 a3 a4)
INFOMANAGERS=(i1 i2 i3)
ALLUSERS=( ${DEVELOPERS[@]} ${ANALYTICS[@]} ${INFOMANAGERS[@]} )
PASSWORD="1234"

# RW rights
PROJ1RW=(r2 r3 r5 a1)
PROJ2RW=(r1 r5 a1)
PROJ3RW=(r1 r2 r4 a2)

# R rights in ACL
PROJ1R=(a4)
PROJ2R=(a2 a3)
PROJ3R=(a1 a4)

#umask 0026
mkdir /projects
cd /projects

# Create All users
for user in ${ALLUSERS[@]}
       do
	    useradd -p $PASSWORD $user 
       done

# Create Projects dir
for proj in ${PROJECTS[@]}
       do
            mkdir $proj
	    groupadd $proj
	    chown :$proj $proj
	    chmod -R 2770 $proj 
       	       
            # Grant RW rights
            
            case $proj in
            proj1)
	        for u in ${PROJ1RW[@]}
	        do		
                adduser $u $proj
	        done
                ;;
            proj2)      
                for u in ${PROJ2RW[@]}
                do
                adduser $u $proj
                done
                ;;
            proj3)
                for u in ${PROJ3RW[@]}
                do
                adduser $u $proj
                done
                ;; 
           esac

       done
       

#declare -p ALLUSERS

exit 0
