#!/bin/bash
set -x

vms=(vRinjin-Haswell-benchmark2 vRinjin-Haswell-benchmark3 vRinjin-Haswell-benchmark7 vRinjin-Haswell-benchmark10)
#vms=(vRinjin-Haswell-benchmark2 )
server_ip="10.240.19.157"
user=root
password=*******

for vm in ${vms[@]}; do
    echo 'powering off $vm'
    ./vm_control.sh $server_ip,$user,$password,power_off,1,$vm 
done


for vm in ${vms[@]}; do
    echo 'powering off $vm'
    ./vm_control.sh $server_ip,$user,$password,power_on,1,$vm 
done
