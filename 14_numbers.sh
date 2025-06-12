#! /bin/bash

x=10
y=30

#echo $((10+20))
echo $((x+y))
echo $((x-y))
echo $((x*y))
echo $((x/y))
echo $((x%y))


#otra sintaxis
echo $(expr $x + $y)
