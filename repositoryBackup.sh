#!/bin/bash

#crontab -e 00 1 * * * echo "Backup successful!" >> backupsLog

clear

var gitRep=$1
var gitURL=$2
var gitUser=$3
var gitPass=$4


if [ ! -d  $gitRep ]; then
git clone $gitURL;
else 
tar -cvpzf backup$(date +"%Y-%m-%d-%l").tgz --exclude='.tgz' pwd 
echo backup$(date +"%Y-%m-%d-%l") "has been created!"
cp -n backup$(date +"%Y-%m-%d-%l").tgz $gitRep
fi

git commit -am "Commit $(date +"%Y-%m-%d-%l").tgz" 
echo backup$(date +"%Y-%m-%d-%l").tgz "committed to the local git repository!"
git push origin $gitRep
#enter username
#enter password
echo backup$(date +"%Y-%m-%d-%l.tgz") "pushed to the remote git repository " $gitRep
