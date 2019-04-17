#!/bin/bash
#
# DevOps training #7 2019 EPAM
#
# Homework #1.1 
#
# Author: Pereskokov Vladimir 

# Environments
PROJECTS=(proj1 proj2 proj3) 
DEVELOPERS=(r1 r2 r3 r4 r5)   
ANALYTICS=(a1 a2 a3 a4)
ALLUSERS=( ${DEVELOPERS[@]} ${ANALYTICS[@]} )

# Users with RW rights
PROJ1RW=(r2 r3 r5 a1)
PROJ2RW=(r1 r5 a1)
PROJ3RW=(r1 r2 r4 a2)

# Users with R rights 
PROJ1R=(a4)
PROJ2R=(a2 a3)
PROJ3R=(a1 a4)

# Directory for All Projects
mkdir /projects
cd /projects

# Create All users
for user in ${ALLUSERS[@]}
       do
	    useradd $user 
       done

# Create Projects dir
for proj in ${PROJECTS[@]}
       do
            mkdir $proj
	    groupadd $proj
	    chown :$proj $proj
	    chmod -R 2770 $proj  # Create SGID bit 
       	       
            # Grant rights
            
            case $proj in
            proj1)
		# RW rights by Group
	        for u in ${PROJ1RW[@]}
	        do		
                    usermod -aG $proj $u
	        done
		# R rights by ACL
		for u in ${PROJ1R[@]}
		do	
	            setfacl -R -m u:$u:r-x $proj
                done		
                ;;
            proj2)
	        # RW rights by Group	    
                for u in ${PROJ2RW[@]}
                do
                    usermod -aG $proj $u
                done
		# R rights by ACL
                for u in ${PROJ2R[@]}
		do
		    setfacl -R -m u:$u:r-x $proj
	        done	    
                ;;
            proj3)
		# RW rights by Group   
                for u in ${PROJ3RW[@]}
                do
                    usermod -aG $proj $u
                done
		# R rights by ACL
		for u in ${PROJ3R[@]}
		do
	            setfacl -R -m u:$u:r-x $proj
		done	
                ;; 
           esac

       done

exit 0
