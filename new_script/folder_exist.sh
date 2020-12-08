#!/bin/sh


### https://src-bin.com/fr/q/e9be


# mkdir tempdir   # if you want to check file use touch instead of mkdir
# ret=$?
# if [ "$ret" == "0" ]
# then
#     echo "dir present"
# else
#     echo "dir not present"
# fi


#!/bin/sh

# Usage:
#
# datecalc "<date>" <operator> <period>
#
# <date> ::= see "man date", section "DATE STRING"
# <operator> ::= + | -
# <period> ::= INTEGER<unit> | INTEGER<unit><period>
# <unit> ::= s | m | h | d

if [ $# -lt 3 ]; then
echo "Missing arguments :-("
exit; fi

date=`eval "date -d \"$1\" +%s"`
if [ -z $date ]; then
echo "Invalid date :-("
exit; fi

if ! ([ $2 == "-" ] || [ $2 == "+" ]); then
echo "Bad operator :-("
exit; fi
op=$2

minute=$[60]
hour=$[$minute*$minute]
day=$[24*$hour]

s=`echo $3 | grep -oe '[0-9]*s' | grep -m 1 -oe '[0-9]*'`
m=`echo $3 | grep -oe '[0-9]*m' | grep -m 1 -oe '[0-9]*'`
h=`echo $3 | grep -oe '[0-9]*h' | grep -m 1 -oe '[0-9]*'`
d=`echo $3 | grep -oe '[0-9]*d' | grep -m 1 -oe '[0-9]*'`
if [ -z $s ]; then s=0; fi
if [ -z $m ]; then m=0; fi
if [ -z $h ]; then h=0; fi
if [ -z $d ]; then d=0; fi

ms=$[$m*$minute]
hs=$[$h*$hour]
ds=$[$d*$day]

sum=$[$s+$ms+$hs+$ds]
out=$[$date$op$sum]
formattedout=`eval "date -d @$out +\"%Y-%m-%d %H:%M:%S\""`

echo $1 $2 $d"d"$h"h"$m"m"$s"s"
echo $formattedout