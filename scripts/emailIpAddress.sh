#!/bin/bash

senderEmail="SchroedingerHepcat@gmail.com"
destinationEmail="joshua@morain.net"
oldIpFile="/tmp/oldIp"
tmpEmailFile="/tmp/ip.email"

touch $oldIpFile
if [ -f $tmpEmailFile ]; then
    rm -f $tmpEmailFile
fi

while [ -z $currentIpAddress ]; do
    currentIpAddress=$(curl -s http://checkip.dyndns.org | sed 's/[a-zA-Z/<> :]//g')
done
lastIpAddress=$(cat $oldIpFile)

if [ "$currentIpAddress" != "$lastIpAddress" ]; then
    cat > $tmpEmailFile << _EOF_
To: $destinationEmail
From: $senderEmail
Subject: Home IP Address

Current IP Address: $currentIpAddress
Updated from: $lastIpAddress
_EOF_

   cat $tmpEmailFile | msmtp -t
   rm -f $tmpEmailFile
   echo $currentIpAddress > $oldIpFile
fi
