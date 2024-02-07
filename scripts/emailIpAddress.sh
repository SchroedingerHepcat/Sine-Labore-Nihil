#!/bin/bash

senderEmail="SchroedingerHepcat@gmail.com"
destinationEmail="joshua@morain.net"
oldIpFile="/tmp/oldIp"
tmpEmailFile="/tmp/ip.email"
logFile="/tmp/ip.log"

echo >> $logFile
echo "Retrieving IP Address" >> $logFile

touch $oldIpFile
if [ -f $tmpEmailFile ]; then
    echo "Removing tmp email file" >> $logFile
    rm -f $tmpEmailFile
fi

while [ -z $currentIpAddress ]; do
    response=$(curl -s http://checkip.dyndns.org)
    echo "Response: $response"
    echo "Response: $response" >> $logFile
    #currentIpAddress=$(curl -s http://checkip.dyndns.org | sed 's/[a-zA-Z/<> :]//g')
    #currentIpAddress=$(dig +short myip.opendns.com @resolver1.opendns.com)
    if [[ "$response" != *"Bad Gateway"* && "$response" != *"Gateway Time-out"* ]]; then
        echo "Successfully retrieved ip address"
        echo "Successfully retrieved ip address" >> $logFile
        currentIpAddress=$(echo $response | sed 's/[a-zA-Z/<> :]//g')
        echo "IP: $currentIpAddress"
        echo "IP: $currentIpAddress" >> $logFile
    else
        sleep 10
    fi
done
lastIpAddress=$(cat $oldIpFile)
echo "Last IP: $currentIpAddress"
echo "Last IP: $currentIpAddress" >> $logFile

if [ "$currentIpAddress" != "$lastIpAddress" ]; then
    echo "Sending Email"
    echo "Sending Email" >> $logFile
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

echo "Finished retrieving IP Address" >> $logFile
