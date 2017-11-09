#!/bin/sh

set -e

# fake syslog
socat UNIX-RECV:/dev/log,mode=666 STDOUT &

while [[ $# -gt 0 ]]; do
    echo "$1" | ( IFS='=' && read -r line && echo $line ) >> /etc/opendkim/opendkim.conf
    shift
done

echo 'Using configuration file:'
echo '========================='
cat /etc/opendkim/opendkim.conf
echo '========================='

exec opendkim -fx /etc/opendkim/opendkim.conf
