## Java Excel

* wget http://www-eu.apache.org/dist/poi/dev/bin/poi-bin-3.16-beta1-20161120.tar.gz
* gunzip poi-bin-3.16-beta1-20161120.tar.gz
* tar xvpf poi-bin-3.16-beta1-20161120.tar
* find poi-3.16-beta1 -type f -name '*.jar' > App.deps

And then, run your java application in the command line by:

```bash
./App.sh
```

The convention I used is:

* App.sh is the main starter script
* App.deps list all the jar dependencies
* App.java is the main app

In this way, there is transparency what jar files are needed.
