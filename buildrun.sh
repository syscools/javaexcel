#!/bin/sh
#
wget http://www-eu.apache.org/dist/poi/dev/bin/poi-bin-3.16-beta1-20161120.tar.gz
gunzip poi-bin-3.16-beta1-20161120.tar.gz
tar xvpf poi-bin-3.16-beta1-20161120.tar
find poi-3.16-beta1 -type f -name '*.jar' > App.deps
./App.sh
