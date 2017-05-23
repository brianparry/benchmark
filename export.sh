#ovftool  --diskMode=thin --datastore=datastore3 --name=andre --net:"Mgmt - longej=VM Network 2"  vQuanta-T41-Haswell.ova vi://root:Zilog256@10.240.19.218S

url=$1
node=$2
ovftool  vi://root:Zilog256@${url}/${1} ${1}
