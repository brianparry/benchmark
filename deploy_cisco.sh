#ovftool  --diskMode=thin --datastore=datastore3 --name=andre --net:"Mgmt - longej=VM Network 2"  vQuanta-T41-Haswell.ova vi://root:Zilog256@10.240.19.218S

count=0
nb_of_nodes=25
url=$1
node=$2
for i in $(seq 26 26)
do
    echo $node
    echo $url
    echo "$i"
    ovftool  --diskMode=thin --datastore=datastore01 --name="vmslave${i}-UCSPE" --net:"VM Network-Azzam=vmslave${i}-switch"  "../isofarm/OVA/${node}" vi://root:Zilog256@${url}
done
