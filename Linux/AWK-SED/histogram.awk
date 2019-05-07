#!/usr/bin/awk -f
#
#
#
#
#
/[0-50]/{
#switch ($0) {
#      case [0-50]:

  	print $0," ot 0 do 50"

#if ($0 > 10) print  "Bolshe 10"
#else print "Menshe 10"
}
/[51-100]/ {

	print $0," bolshe 50"
	}
