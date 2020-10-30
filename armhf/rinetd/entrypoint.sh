#!/usr/bin/env sh

echo "allow *.*.*.*" > /etc/rinetd.conf
echo "logfile /var/log/rinetd/rinetd.log" >> /etc/rinetd.conf
echo "$FORWARDING_RULES" | sed "s/; */\n/g" >> /etc/rinetd.conf

rinetd -f -c /etc/rinetd.conf
