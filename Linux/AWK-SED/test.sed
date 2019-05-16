#!/bin/sed -f 
#
# 
#
# Author: Vladimir Pereskokov



/^[0-9]$/ {
#s/^.*$/*/g 
w /tmp/09.sed
s/.*//
}
/^1[0-9]$/ {
#s/^.*$/*/g 
w /tmp/1019.sed
s/.*//

}
/^2[0-9]$/ {
#s/^.*$/*/g 
w /tmp/2029.sed
s/.*//

} 
/^3[0-9]$/ {
#s/^.*$/*/g
w /tmp/3039.sed
s/.*//

}
/^4[0-9]$/ {
#s/^.*$/*/g
w /tmp/4049.sed
s/.*//

}
/^5[0-9]$/ {
#s/^.*$/*/g
w /tmp/5059.sed
s/.*//

}
/^6[0-9]$/ {
#s/^.*$/*/g
w /tmp/6069.sed
s/.*//

}
/^7[0-9]$/ {
#s/^.*$/*/g
w /tmp/7079.sed

s/.*//
}
/^8[0-9]$/ {
#s/^.*$/*/g
w /tmp/8089.sed

s/.*//
}
/^9[0-9]$/ {
#s/^.*$/*/g
w /tmp/9099.sed
s/.*//

}
/^[1-9][0-9][0-9]$/ {
#s/^.*$/*/g
w /tmp/100.sed
s/.*//

}
#--------

$ {
i\
Total:
$=

s/.*/rm -f \/tmp\/temp.sed;cat \/tmp\/*.sed >> \/tmp\/temp.sed/e
H
s/.*/n=$(wc -l \/tmp\/09.sed|cut -d ' ' -f 1);L=$(wc -l \/tmp\/temp.sed|cut -d ' ' -f 1);p=$((100*n\/L))"%";printf " 0 -  9: %4d is %4s" "$n" "$p";/e
H
s/.*/n=$(wc -l \/tmp\/1019.sed|cut -d ' ' -f 1);L=$(wc -l \/tmp\/temp.sed|cut -d ' ' -f 1);p=$((100*n\/L))"%";printf "10 - 19: %4d is %4s" "$n" "$p";/e
H
s/.*/n=$(wc -l \/tmp\/2029.sed|cut -d ' ' -f 1);L=$(wc -l \/tmp\/temp.sed|cut -d ' ' -f 1);p=$((100*n\/L))"%";printf "20 - 29: %4d is %4s" "$n" "$p";/e
H
s/.*/n=$(wc -l \/tmp\/3039.sed|cut -d ' ' -f 1);L=$(wc -l \/tmp\/temp.sed|cut -d ' ' -f 1);p=$((100*n\/L))"%";printf "30 - 39: %4d is %4s" "$n" "$p";/e
H
s/.*/n=$(wc -l \/tmp\/4049.sed|cut -d ' ' -f 1);L=$(wc -l \/tmp\/temp.sed|cut -d ' ' -f 1);p=$((100*n\/L))"%";printf "40 - 49: %4d is %4s" "$n" "$p";/e
H
s/.*/n=$(wc -l \/tmp\/5059.sed|cut -d ' ' -f 1);L=$(wc -l \/tmp\/temp.sed|cut -d ' ' -f 1);p=$((100*n\/L))"%";printf "50 - 59: %4d is %4s" "$n" "$p";/e
H
s/.*/n=$(wc -l \/tmp\/6069.sed|cut -d ' ' -f 1);L=$(wc -l \/tmp\/temp.sed|cut -d ' ' -f 1);p=$((100*n\/L))"%";printf "60 - 69: %4d is %4s" "$n" "$p";/e
H
s/.*/n=$(wc -l \/tmp\/7079.sed|cut -d ' ' -f 1);L=$(wc -l \/tmp\/temp.sed|cut -d ' ' -f 1);p=$((100*n\/L))"%";printf "70 - 79: %4d is %4s" "$n" "$p";/e
H
s/.*/n=$(wc -l \/tmp\/8089.sed|cut -d ' ' -f 1);L=$(wc -l \/tmp\/temp.sed|cut -d ' ' -f 1);p=$((100*n\/L))"%";printf "80 - 89: %4d is %4s" "$n" "$p";/e
H
s/.*/n=$(wc -l \/tmp\/9099.sed|cut -d ' ' -f 1);L=$(wc -l \/tmp\/temp.sed|cut -d ' ' -f 1);p=$((100*n\/L))"%";printf "90 - 99: %4d is %4s" "$n" "$p";/e
H
s/.*/n=$(wc -l \/tmp\/100.sed|cut -d ' ' -f 1);L=$(wc -l \/tmp\/temp.sed|cut -d ' ' -f 1);p=$((100*n\/L))"%";printf "    100: %4d is %4s\n" "$n" "$p";/e
H
s/.*/rm -rf \/tmp\/*.sed/e
H
G
}

 
 
