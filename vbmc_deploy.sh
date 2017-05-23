#ovftool  --diskMode=thin --datastore=datastore3 --name=andre --net:"Mgmt - longej=VM Network 2"  vQuanta-T41-Haswell.ova vi://root:Zilog256@10.240.19.218S

count=0
nb_of_nodes=25
url=$1
node=$2
for i in $(seq 11 11)
do
    echo $node
    echo $url
    ovftool  --diskMode=thin --datastore=datastore1 --name=vbmc${i} --net:"Mgmt - longej=vmslave${i}-switch"  "../isofarm/OVA/${node}" vi://root:Zilog256@${url}
done
