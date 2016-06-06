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
vagrant destroy -f
vagrant up cloudbolt
