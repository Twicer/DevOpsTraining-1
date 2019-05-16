#!/bin/sed -f 
#
# 
#
# Author: Vladimir Pereskokov



/^[0-9]$/ {
#s/^.*$/*/g 
w files/09
s/.*//
}
/^1[0-9]$/ {
#s/^.*$/*/g 
w files/1019
s/.*//

}
/^2[0-9]$/ {
#s/^.*$/*/g 
w files/2029
s/.*//

} 
/^3[0-9]$/ {
#s/^.*$/*/g
w files/3039
s/.*//

}
/^4[0-9]$/ {
#s/^.*$/*/g
w files/4049
s/.*//

}
/^5[0-9]$/ {
#s/^.*$/*/g
w files/5059
s/.*//

}
/^6[0-9]$/ {
#s/^.*$/*/g
w files/6069
s/.*//

}
/^7[0-9]$/ {
#s/^.*$/*/g
w files/7079

s/.*//
}
/^8[0-9]$/ {
#s/^.*$/*/g
w files/8089

s/.*//
}
/^9[0-9]$/ {
#s/^.*$/*/g
w files/9099
s/.*//

}
/^[1-9][0-9][0-9]$/ {
#s/^.*$/*/g
w files/100
s/.*//

}
#--------

$ {

i\
Amount:

$=

s/.*/echo HELLO/e
H
s/.*/rm -f temp;cat files\/* >> temp/e
H
#s/.*/L=$(wc temp|cut -d ' ' -f 1);echo "by shell: "$L;/e
s/.*/n=$(wc -l files\/09|cut -d ' ' -f 1);L=$(wc -l temp|cut -d ' ' -f 1);p=$((100*n\/L))"%";printf " 0 -  9: %4d is %4s" "$n" "$p";/e
H
s/.*/n=$(wc -l files\/1019|cut -d ' ' -f 1);L=$(wc -l temp|cut -d ' ' -f 1);p=$((100*n\/L))"%";printf "10 - 19: %4d is %4s" "$n" "$p";/e
H
s/.*/n=$(wc -l files\/2029|cut -d ' ' -f 1);L=$(wc -l temp|cut -d ' ' -f 1);p=$((100*n\/L))"%";printf "20 - 29: %4d is %4s" "$n" "$p";/e
H
s/.*/n=$(wc -l files\/3039|cut -d ' ' -f 1);L=$(wc -l temp|cut -d ' ' -f 1);p=$((100*n\/L))"%";printf "30 - 39: %4d is %4s" "$n" "$p";/e
H
s/.*/n=$(wc -l files\/4049|cut -d ' ' -f 1);L=$(wc -l temp|cut -d ' ' -f 1);p=$((100*n\/L))"%";printf "40 - 49: %4d is %4s" "$n" "$p";/e
H
s/.*/n=$(wc -l files\/5059|cut -d ' ' -f 1);L=$(wc -l temp|cut -d ' ' -f 1);p=$((100*n\/L))"%";printf "50 - 59: %4d is %4s" "$n" "$p";/e
H
s/.*/n=$(wc -l files\/6069|cut -d ' ' -f 1);L=$(wc -l temp|cut -d ' ' -f 1);p=$((100*n\/L))"%";printf "60 - 69: %4d is %4s" "$n" "$p";/e
H
s/.*/n=$(wc -l files\/7079|cut -d ' ' -f 1);L=$(wc -l temp|cut -d ' ' -f 1);p=$((100*n\/L))"%";printf "70 - 79: %4d is %4s" "$n" "$p";/e
H
s/.*/n=$(wc -l files\/8089|cut -d ' ' -f 1);L=$(wc -l temp|cut -d ' ' -f 1);p=$((100*n\/L))"%";printf "80 - 89: %4d is %4s" "$n" "$p";/e
H
s/.*/n=$(wc -l files\/9099|cut -d ' ' -f 1);L=$(wc -l temp|cut -d ' ' -f 1);p=$((100*n\/L))"%";printf "90 - 99: %4d is %4s" "$n" "$p";/e
H
s/.*/n=$(wc -l files\/100|cut -d ' ' -f 1);L=$(wc -l temp|cut -d ' ' -f 1);p=$((100*n\/L))"%";printf "    100: %4d is %4s\n" "$n" "$p";/e
H
G
}

 
 
