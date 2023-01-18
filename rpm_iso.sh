#!/bin/bash

RPM_FILE="/tmp/rpms.txt"
for pkg in `cat $RPM_FILE`; do
    RPM=`find /mnt/ -name $pkg*.rpm`
    if [[ $RPM =~ .*BaseOS.* ]];then
       cp -ap $RPM /data/custom_iso/BaseOS/Packages/
    elif [[ $RPM =~ .*AppStream.* ]];then
       cp -ap $RPM /data/custom_iso/AppStream/Packages/
    else
       echo "$pkg not found"
    fi
done