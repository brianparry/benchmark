ESXI_HOST="10.240.19.218"
ESXI_USER="root"
ESXI_PASS="Zilog256"
for i in {1..25}
do
    echo Quanta${i}
    ./vm_control.sh "${ESXI_HOST},${ESXI_USER},${ESXI_PASS},power_off,1,Quanta${i}" &
done

ESXI_HOST="10.240.19.173"
for i in {1..25}
do
    echo Quanta${i}
    ./vm_control.sh "${ESXI_HOST},${ESXI_USER},${ESXI_PASS},power_off,1,Quanta${i}" &
done
