#!/bin/bash
#
# DevOps training #7
#
# Homework #1: ACL Task   
#
# Author: Pereskokov Vladimir 


PROJECTS=(Proj1 Proj2 Proj3)
DEVELOPERS=(R1 R2 R3 R4 R5)
ANALYTICS=(A1 A2 A3 A4)
INFOMANAGERS=(I1 I2 I3)

umask 0026
mkdir /projects
cd /projects

for proj in ${PROJECTS[@]}
       do
            mkdir $proj
       done	       


#declare -p 

exit 0
