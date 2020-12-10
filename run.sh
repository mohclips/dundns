#!/bin/sh

. /tmp/CREDS

SLEEP=300

while true;
do

    for DOMAIN in $DOMAINS ; do
        URL="https://www.duckdns.org/update?domains=${DOMAIN}&token=${TOKEN}&ip=&verbose=true" 
        echo $URL
        curl -k $URL
        echo ""
    done
    sleep $SLEEP
done 

