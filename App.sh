#!/bin/sh
#

if [ $(uname -o) = 'Cygwin' ];then
    echo "java CLASSPATH in cygwin works differently"
    exit 1
fi

x=${0%%.sh}
a=${x##./}
jars=$(tr '\n' ':' < ${a}.deps)
log=$(mktemp)

javac -cp $jars:. ${a}.java 2>$log
if [ $? -eq 0 ];then
    java -cp $jars:. $a
    echo "-------------------------------------------------"
    echo "success. Please check excel output file generated"
    ls -l *.xlsx
else
    cat $log    
fi

rm $log
