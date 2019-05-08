#!/usr/bin/awk -f
#
#
#
#
#  

{
 if ($0<=9) {
	    a++
            }
 if ($0>=10 && $0<=19) {
	    b++
	    }
 if ($0>=20 && $0<=29) {
            c++
            } 
 if ($0>=30 && $0<=39) {
            d++
            }
 if ($0>=40 && $0<=49) {
            e++
            }
 if ($0>=50 && $0<=59) {
            f++
            }
 if ($0>=60 && $0<=69) {
            g++
            }
 if ($0>=70 && $0<=79) {
            h++
            }
 if ($0>=80 && $0<=89) {
            i++
            }
 if ($0>=90 && $0<=99) {
            j++
            }
 if ($0>=100) {
            k++
            }



}	
END {

print " Amount: " NR	
printf("  0 -  9:  %3d is %4s %.50s\n", a, int ((a/NR)*100)"%", makeStars(a))
printf(" 10 - 19:  %3d is %4s %.50s\n", b, int ((b/NR)*100)"%", makeStars(b))
printf(" 20 -  9:  %3d is %4s %.50s\n", c, int ((c/NR)*100)"%", makeStars(c))
printf(" 30 -  9:  %3d is %4s %.50s\n", d, int ((d/NR)*100)"%", makeStars(d))
printf(" 40 -  9:  %3d is %4s %.50s\n", e, int ((e/NR)*100)"%", makeStars(e))
printf(" 50 -  9:  %3d is %4s %.50s\n", f, int ((f/NR)*100)"%", makeStars(f))
printf(" 60 -  9:  %3d is %4s %.50s\n", g, int ((g/NR)*100)"%", makeStars(g))
printf(" 70 -  9:  %3d is %4s %.50s\n", h, int ((h/NR)*100)"%", makeStars(h))
printf(" 80 -  9:  %3d is %4s %.50s\n", i, int ((i/NR)*100)"%", makeStars(i))
printf(" 90 -  9:  %3d is %4s %.50s\n", j, int ((j/NR)*100)"%", makeStars(j))
printf("     100:  %3d is %4s %.50s\n", k, int ((k/NR)*100)"%", makeStars(k))

}

# Drawing Histogram
function makeStars(x){
        stars = ""
        symbol = "*"
        for (i=1;i<=x;i++){
                stars = stars symbol
                }
        return stars
        }


