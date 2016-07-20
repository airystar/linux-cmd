#!/bin/bash

DPORT=2800
SERVER_IP=$1
PORTSTART=2810
PORTEND=2815
iptables -F
iptables -t nat -F
iptables -X

iptables -P INPUT ACCEPT
iptables -P OUTPUT ACCEPT
iptables -P FORWARD ACCEPT


iptables -t nat -A OUTPUT -p tcp -m tcp --dport $DPORT -m state --state NEW -j DNAT --random --to-destination $SERVER_IP:$PORTSTART-$PORTEND

iptables -L -t nat
