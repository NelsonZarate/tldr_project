#!/bin/bash

a=2
b=2

if [ $a=$b ];then
     echo "a é igual a b"
fi

if [ $a -gt $b ];then
     echo "a é maior do que b"
fi

if [ $a -lt $b ];then
     echo "a é menor do que b"
fi

if [ $a = $b -a $a = 2 ];then
     echo "a é igual a b e a = 2"
fi



