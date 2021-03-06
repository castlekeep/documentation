#!/bin/sh

echo generate documentaion of castlekeep

if [ ! -d castlekeep ] ; then
	git clone git://github.com/castlekeep/castlekeep.git
else
	cd castlekeep
	git pull origin master
	cd ../
fi
doxygen doxy.conf
genTime=`date`
git add .
git commit -m "[gen] $genTime"
git push origin gh-pages
exit 0
