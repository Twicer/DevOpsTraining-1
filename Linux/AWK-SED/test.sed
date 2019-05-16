#!/bin/sed -f 
#
# 
#
# Author: Vladimir Pereskokov



/^[0-9]$/ {
#s/^.*$/*/g 
w files/09
}
/^1[0-9]$/ {
#s/^.*$/*/g 
w files/1019
}
/^2[0-9]$/ {
#s/^.*$/*/g 
w files/2029
} 
/^3[0-9]$/ {
#s/^.*$/*/g
w files/3039
}
/^4[0-9]$/ {
#s/^.*$/*/g
w files/4049
}
/^5[0-9]$/ {
#s/^.*$/*/g
w files/5059
}
/^6[0-9]$/ {
#s/^.*$/*/g
w files/6069
}
/^7[0-9]$/ {
#s/^.*$/*/g
w files/7079
}
/^8[0-9]$/ {
#s/^.*$/*/g
w files/8089
}
/^9[0-9]$/ {
#s/^.*$/*/g
w files/9099
}
/^[1-9][0-9][0-9]$/ {
#s/^.*$/*/g
w files/100
}
#--------

${

i\
Amount:

$=

erm -f temp;cat files/* >> temp

eL=\$(wc temp|cut -d ' ' -f 1);echo "by shell: "$L;

en=\$(wc -l files/09|cut -d ' ' -f 1);L=\$(wc temp|cut -d ' ' -f 1);p=\$((100*n/L))"%";\printf "\n 0 -  9: %4d is %4s" "$n" "$p";
en=\$(wc -l files/1019|cut -d ' ' -f 1);L=\$(wc temp|cut -d ' ' -f 1);p=\$((100*n/L))"%";\printf "\n10 - 19: %4d is %4s" "$n" "$p";
en=\$(wc -l files/2029|cut -d ' ' -f 1);L=\$(wc temp|cut -d ' ' -f 1);p=\$((100*n/L))"%";\printf "\n20 - 29: %4d is %4s" "$n" "$p";
en=\$(wc -l files/3039|cut -d ' ' -f 1);L=\$(wc temp|cut -d ' ' -f 1);p=\$((100*n/L))"%";\printf "\n30 - 39: %4d is %4s" "$n" "$p";
en=\$(wc -l files/4049|cut -d ' ' -f 1);L=\$(wc temp|cut -d ' ' -f 1);p=\$((100*n/L))"%";\printf "\n40 - 49: %4d is %4s" "$n" "$p";
en=\$(wc -l files/5059|cut -d ' ' -f 1);L=\$(wc temp|cut -d ' ' -f 1);p=\$((100*n/L))"%";\printf "\n50 - 59: %4d is %4s" "$n" "$p";
en=\$(wc -l files/6069|cut -d ' ' -f 1);L=\$(wc temp|cut -d ' ' -f 1);p=\$((100*n/L))"%";\printf "\n60 - 69: %4d is %4s" "$n" "$p";
en=\$(wc -l files/7079|cut -d ' ' -f 1);L=\$(wc temp|cut -d ' ' -f 1);p=\$((100*n/L))"%";\printf "\n70 - 79: %4d is %4s" "$n" "$p";
en=\$(wc -l files/8089|cut -d ' ' -f 1);L=\$(wc temp|cut -d ' ' -f 1);p=\$((100*n/L))"%";\printf "\n80 - 89: %4d is %4s" "$n" "$p";
en=\$(wc -l files/9099|cut -d ' ' -f 1);L=\$(wc temp|cut -d ' ' -f 1);p=\$((100*n/L))"%";\printf "\n90 - 99: %4d is %4s" "$n" "$p";
en=\$(wc -l files/100|cut -d ' ' -f 1);L=\$(wc temp|cut -d ' ' -f 1);p=\$((100*n/L))"%";\printf "\n    100: %4d is %4s\n" "$n" "$p"; 


}
 
 
