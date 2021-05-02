#!/bin/bash

#wget https://ci.roster.thomsonreuters.com/.env -O .env.ci

chmod 777 scripts/var1 scripts/var2

diff scripts/var1 scripts/var2 > /dev/null 2>&1
error=$?
if [ $error -eq 0 ]
then
   echo "var1 and $var2 are the same file"
elif [ $error -eq 1 ]
then
   echo "var1 and var2 differ"
else
   echo "There was something wrong with the diff command"
fi

#sleep 10000

#cat .env.ci | grep VERSION > version.ci 
#cat .env | grep version > version 
#diff version version.ci
