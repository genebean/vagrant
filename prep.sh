#!/bin/bash
service iptables stop
service ip6tables stop
chkconfig iptables off
chkconfig ip6tables off
#yum -q -y install puppet
#yum -q -y update
