#!/bin/bash
PATH=/usr/sbin:/usr/bin:/sbin:/bin
if [[ ! "$(/usr/sbin/service mysql status)" =~ "(running)" ]]
then
    echo "MySQL was just restarted on webg1." | mail -s "MySQL restarted" -a "From: server <root@server.domain.com>" notification-email@gmail.com
sudo service mysql start
fi