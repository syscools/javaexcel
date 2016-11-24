#!/bin/sh
#

x=${0%%.sh}
a=${x##./}
jars=$(tr '\n' ':' < ${a}.deps)

log=$(mktemp)

javac -cp $jars:. ${a}.java 2>$log
if [ $? -eq 0 ];then
    java -cp $jars:. $a
else
    cat $log    
fi

rm $log
