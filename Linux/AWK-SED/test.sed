#!/bin/sed -f 
#
# 
#
# Author: Vladimir Pereskokov


s/^[0-9]$/*/g w 09.tmp
s/^1[0-9]$/*/g w 1019.tmp
s/^2[0-9]$/*/g w 2029.tmp 
s/^3[0-9]$/*/g w 3039.tmp
s/^4[0-9]$/*/g w 4049.tmp
s/^5[0-9]$/*/g w 5059.tmp
s/^6[0-9]$/*/g w 6069.tmp
s/^7[0-9]$/*/g w 7079.tmp
s/^8[0-9]$/*/g w 8089.tmp
s/^9[0-9]$/*/g w 9099.tmp
s/^[1-9][0-9][0-9]$/*/g w 100.tmp

#--------

${

e\rm -f temp;cat *.tmp >> temp

#esed -e ':Loop;N;$!bLoop;s/\n//g' 09.tmp > 09.tmp 
#esed -e ':Loop;N;$!bLoop;s/\n//g' 1019.tmp > 1019.tmp 
#esed -e:Loop;N;$!bLoop;s/\n//g 2029.tmp  w 2029.tmp 
#esed -e ':Loop;N;$!bLoop;s/\n//g' 3039.tmp > 3039.tmp 
#esed -e ':Loop;N;$!bLoop;s/\n//g' 4049.tmp > 4049.tmp 
#esed -e ':Loop;N;$!bLoop;s/\n//g' 5059.tmp > 5059.tmp 
#esed -e ':Loop;N;$!bLoop;s/\n//g' 6069.tmp > 6069.tmp 
#esed -e ':Loop;N;$!bLoop;s/\n//g' 7079.tmp > 7079.tmp 
#esed -e ':Loop;N;$!bLoop;s/\n//g' 8089.tmp > 8089.tmp 
#esed -e ':Loop;N;$!bLoop;s/\n//g' 9099.tmp > 9099.tmp 
#esed -e ':Loop;N;$!bLoop;s/\n//g' 100.tmp > 100.tmp 

#en=\`wc 2029.tmp|awk '{print $1}'\`;printf "20 - 29: %5d " "$n";i=0;while [$i -lt $n];do echo "*";$((i++));done
#en=\$(wc 2029.tmp|cut -d ' ' -f 1);\printf "\n20 - 29: %5d " "$n";i=0; while [$i -lt $n];do echo -n "*";i=$((++i));done
en=\$(wc 09.tmp|cut -d ' ' -f 1);\printf "\n 0 -  9: %4d " "$n";
en=\$(wc 1019.tmp|cut -d ' ' -f 1);\printf "\n10 - 19: %4d " "$n";
en=\$(wc 2029.tmp|cut -d ' ' -f 1);\printf "\n20 - 29: %4d " "$n";
en=\$(wc 3039.tmp|cut -d ' ' -f 1);\printf "\n30 - 39: %4d " "$n";
en=\$(wc 4049.tmp|cut -d ' ' -f 1);\printf "\n40 - 49: %4d " "$n";
en=\$(wc 5059.tmp|cut -d ' ' -f 1);\printf "\n50 - 59: %4d " "$n";
en=\$(wc 6069.tmp|cut -d ' ' -f 1);\printf "\n60 - 69: %4d " "$n";
en=\$(wc 7079.tmp|cut -d ' ' -f 1);\printf "\n70 - 79: %4d " "$n";
en=\$(wc 8089.tmp|cut -d ' ' -f 1);\printf "\n80 - 89: %4d " "$n";
en=\$(wc 9099.tmp|cut -d ' ' -f 1);\printf "\n90 - 99: %4d " "$n";
en=\$(wc 100.tmp|cut -d ' ' -f 1);\printf "\n    100: %4d\n" "$n";




}
 
 
