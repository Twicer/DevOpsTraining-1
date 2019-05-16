#!/usr/bin/awk -f
#
# DevOps training #7 2019 EPAM
#
# Homework #2.1 
#
# Author: Pereskokov Vladimir

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

print " Total: " NR	
printf("\n  0 -  9: %4s %.50s\n", int ((a/NR)*100)"%", makeStars(a))
printf(" 10 - 19: %4s %.50s\n", int ((b/NR)*100)"%", makeStars(b))
printf(" 20 -  9: %4s %.50s\n", int ((c/NR)*100)"%", makeStars(c))
printf(" 30 -  9: %4s %.50s\n", int ((d/NR)*100)"%", makeStars(d))
printf(" 40 -  9: %4s %.50s\n", int ((e/NR)*100)"%", makeStars(e))
printf(" 50 -  9: %4s %.50s\n", int ((f/NR)*100)"%", makeStars(f))
printf(" 60 -  9: %4s %.50s\n", int ((g/NR)*100)"%", makeStars(g))
printf(" 70 -  9: %4s %.50s\n", int ((h/NR)*100)"%", makeStars(h))
printf(" 80 -  9: %4s %.50s\n", int ((i/NR)*100)"%", makeStars(i))
printf(" 90 -  9: %4s %.50s\n", int ((j/NR)*100)"%", makeStars(j))
printf("     100: %4s %.50s\n", int ((k/NR)*100)"%", makeStars(k))

}

# Drawing Stars
function makeStars(x){
        stars = ""
        symbol = "*"
        for (i=1;i<=x;i++){
                stars = stars symbol
                }
        return stars
        }


