#!/bin/bash
 
color=$(grep color "$*" | awk '{print $2}')

if [ "$color" == "blue" ]
then 
  next=green
else 
  next=blue
fi

sed -i "0,/$color/s/$color/$next/g" "$*"
