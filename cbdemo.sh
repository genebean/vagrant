#!/bin/bash
echo
echo "Enter CloudBolt Version"
echo "5.4.1_ea5d46d 6.0-alpha4_7f205d3"
echo -n '# '
read READ_CB_VER
export CB_VER=$READ_CB_VER
export CB_VER_SHORT=${CB_VER%_*}
echo
echo "Enter Memory for CB Demo VM"
echo "8192"
echo -n '# '
read READ_CB_MEM
export CB_MEM=$READ_CB_MEM
#echo
#echo "Enter Puppet Enterprise Version"
#echo "2015.3.3  2016.1.1  2016.1.2"
#echo -n '# '
#read READ_PUPPET_ENT_VER
#export PUPPET_ENT_VER=$READ_PUPPET_ENT_VER
#echo
#echo "Enter Chef Server Version"
#echo "12.6.0-1"
#echo -n '# '
#read READ_CHEF_VER
#export CHEF_VER=$READ_CHEF_VER
vagrant destroy -f
vagrant up cloudbolt
