#!/bin/sed -f 
#
# DevOps training #7 2019 EPAM
#
# Homework #2.2  
#
# Author: Vladimir Pereskokov

/^[0-9]$/ {
w /tmp/09.sed
s/.*//
}
/^1[0-9]$/ {
w /tmp/1019.sed
s/.*//
}
/^2[0-9]$/ {
w /tmp/2029.sed
s/.*//
} 
/^3[0-9]$/ {
w /tmp/3039.sed
s/.*//
}
/^4[0-9]$/ {
w /tmp/4049.sed
s/.*//
}
/^5[0-9]$/ {
w /tmp/5059.sed
s/.*//
}
/^6[0-9]$/ {
w /tmp/6069.sed
s/.*//
}
/^7[0-9]$/ {
w /tmp/7079.sed
s/.*//
}
/^8[0-9]$/ {
w /tmp/8089.sed
s/.*//
}
/^9[0-9]$/ {
w /tmp/9099.sed
s/.*//
}
/^[1-9][0-9][0-9]$/ {
w /tmp/100.sed
s/.*//
}


$ {
i\
Total:
$=

s/.*/rm -f \/tmp\/temp.sed;cat \/tmp\/*.sed >> \/tmp\/temp.sed/e
H
s/.*/n=$(wc -l \/tmp\/09.sed|cut -d ' ' -f 1);L=$(wc -l \/tmp\/temp.sed|cut -d ' ' -f 1);p=$((100*n\/L))"% ";printf " 0 -  9: %4s " "$p";printf '%*s' $n | tr ' ' '*'/e
H
s/.*/n=$(wc -l \/tmp\/1019.sed|cut -d ' ' -f 1);L=$(wc -l \/tmp\/temp.sed|cut -d ' ' -f 1);p=$((100*n\/L))"% ";printf "10 - 19: %4s " "$p";printf '%*s' $n | tr ' ' '*'/e
H
s/.*/n=$(wc -l \/tmp\/2029.sed|cut -d ' ' -f 1);L=$(wc -l \/tmp\/temp.sed|cut -d ' ' -f 1);p=$((100*n\/L))"% ";printf "20 - 29: %4s " "$p";printf '%*s' $n | tr ' ' '*'/e
H
s/.*/n=$(wc -l \/tmp\/3039.sed|cut -d ' ' -f 1);L=$(wc -l \/tmp\/temp.sed|cut -d ' ' -f 1);p=$((100*n\/L))"% ";printf "30 - 39: %4s " "$p";printf '%*s' $n | tr ' ' '*'/e
H
s/.*/n=$(wc -l \/tmp\/4049.sed|cut -d ' ' -f 1);L=$(wc -l \/tmp\/temp.sed|cut -d ' ' -f 1);p=$((100*n\/L))"% ";printf "40 - 49: %4s " "$p";printf '%*s' $n | tr ' ' '*'/e
H
s/.*/n=$(wc -l \/tmp\/5059.sed|cut -d ' ' -f 1);L=$(wc -l \/tmp\/temp.sed|cut -d ' ' -f 1);p=$((100*n\/L))"% ";printf "50 - 59: %4s " "$p";printf '%*s' $n | tr ' ' '*'/e
H
s/.*/n=$(wc -l \/tmp\/6069.sed|cut -d ' ' -f 1);L=$(wc -l \/tmp\/temp.sed|cut -d ' ' -f 1);p=$((100*n\/L))"% ";printf "60 - 69: %4s " "$p";printf '%*s' $n | tr ' ' '*'/e
H
s/.*/n=$(wc -l \/tmp\/7079.sed|cut -d ' ' -f 1);L=$(wc -l \/tmp\/temp.sed|cut -d ' ' -f 1);p=$((100*n\/L))"% ";printf "70 - 79: %4s " "$p";printf '%*s' $n | tr ' ' '*'/e
H
s/.*/n=$(wc -l \/tmp\/8089.sed|cut -d ' ' -f 1);L=$(wc -l \/tmp\/temp.sed|cut -d ' ' -f 1);p=$((100*n\/L))"% ";printf "80 - 89: %4s " "$p";printf '%*s' $n | tr ' ' '*'/e
H
s/.*/n=$(wc -l \/tmp\/9099.sed|cut -d ' ' -f 1);L=$(wc -l \/tmp\/temp.sed|cut -d ' ' -f 1);p=$((100*n\/L))"% ";printf "90 - 99: %4s " "$p";printf '%*s' $n | tr ' ' '*'/e
H
s/.*/n=$(wc -l \/tmp\/100.sed|cut -d ' ' -f 1);L=$(wc -l \/tmp\/temp.sed|cut -d ' ' -f 1);p=$((100*n\/L))"% ";printf "    100: %4s " "$p";printf '%*s' $n | tr ' ' '*'/e
H
s/.*/rm -rf \/tmp\/*.sed/e
H
G
}

 
 
