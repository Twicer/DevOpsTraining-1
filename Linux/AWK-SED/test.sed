#!/bin/sed -f 
#
# 
#
# Author: Vladimir Pereskokov


s/^[0-9]$/*/ w 09.tmp
s/^1[0-9]$/*/ w 1019.tmp
s/^2[0-9]$/*/ w 2029.tmp
s/^3[0-9]$/*/ w 3039.tmp
s/^4[0-9]$/*/ w 4049.tmp
s/^5[0-9]$/*/ w 5059.tmp
s/^6[0-9]$/*/ w 6069.tmp
s/^7[0-9]$/*/ w 7079.tmp
s/^8[0-9]$/*/ w 8089.tmp
s/^9[0-9]$/*/ w 9099.tmp
s/^[1-9][0-9][0-9]$/*/ w 100.tmp
q
#--------

${

erm -f temp;cat *.tmp >> temp

esed -e ':Loop;N;$!bLoop;s/\n//g' 09.tmp > 09.tmp 
esed -e ':Loop;N;$!bLoop;s/\n//g' 1019.tmp > 1019.tmp 
esed -e ':Loop;N;$!bLoop;s/\n//g' 2029.tmp > 2029.tmp 
esed -e ':Loop;N;$!bLoop;s/\n//g' 3039.tmp > 3039.tmp 
esed -e ':Loop;N;$!bLoop;s/\n//g' 4049.tmp > 4049.tmp 
esed -e ':Loop;N;$!bLoop;s/\n//g' 5059.tmp > 5059.tmp 
esed -e ':Loop;N;$!bLoop;s/\n//g' 6069.tmp > 6069.tmp 
esed -e ':Loop;N;$!bLoop;s/\n//g' 7079.tmp > 7079.tmp 
esed -e ':Loop;N;$!bLoop;s/\n//g' 8089.tmp > 8089.tmp 
esed -e ':Loop;N;$!bLoop;s/\n//g' 9099.tmp > 9099.tmp 
esed -e ':Loop;N;$!bLoop;s/\n//g' 100.tmp > 100.tmp 

en=\`wc 2029.tmp|awk '{print $1}'\`;printf "20 - 29: %5d " "$n;stars=\`cat 2029.tmp\`;echo $stars



}
 
 
