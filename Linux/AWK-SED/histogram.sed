#!/bin/sed -f
#
#
#
#


#: Start

/^[0-9]$/ s/^.*$/a&/
s/a/0-9 =/

/^1[0-9]$/ s/^.*$/b&/ 
s/b/10-19 = /

/^2[0-9]$/ s/^.*$/c&/
s/c/20-29 = /

/^3[0-9]$/ s/^.*$/d&/
s/d/30-39 = /

/^4[0-9]$/ s/^.*$/e&/
s/e/40-49 = /

/^5[0-9]$/ s/^.*$/f&/
s/f/50-59 = /

/^6[0-9]$/ s/^.*$/g&/
s/g/60-69 = /

/^7[0-9]$/ s/^.*$/h&/
s/h/70-79 = /

/^8[0-9]$/ s/^.*$/i&/
s/i/80-89 = /

/^9[0-9]$/ s/^.*$/j&/
s/j/90-99 = /

/^[1-9][0-9][0-9]$/ s/^.*$/k&/
s/k/100... = /

#======STARs
#!/bin/sed -ef
#
#
#
#


/22/ {
s/\(^.*$\)/&*/g
}

