#!/usr/bin/awk -f
#
#
#
#
#

$0 ~ /^[0-50]$/ {
	a++
        print $0
}

$0 ~ /^[51-150]$/ {
	b++
	print $0
	}

END {
	print "Menshe 50 = ", a
	print "Bolshe 50= ", b
	}
