#!/bin/bash
VMID="vros1"
VMSADDR="127.0.0.1"
VMSPORT="1102"
VMMPORT="1202"
VMPATH="/virtio"
VMISO=""
VMHDD="${VMPATH}/images/${VMID}-disk001.qcow2"
VMMON="telnet:${VMSADDR}:${VMMPORT},server,nowait"
VMPID="${VMPATH}/qemu/${VMID}.pid"
VMBR0="virbr1"
VMBR1="virbr2"
VMMAC0="02:13:BC:00:00:02"
VMMAC1="02:13:BC:00:00:A2"

echo -e "Name: ${VMID} (${VMMAC0}, ${VMMAC1})"
echo -e "Access: ${VMSADDR}:${VMSPORT}"
echo -e "Monitor: ${VMSADDR}:${VMMPORT}"

qemu-system-x86_64 -nodefaults \
-boot "order=c,menu=on" -monitor "${VMMON}" \
-smp "sockets=1,cores=1" -m 64M -vga qxl \
-cpu qemu64-v1 -machine "type=q35,accel=kvm" \
-name "${VMID}" -pidfile "${VMPID}" -daemonize \
-drive "index=0,media=cdrom,file=${VMISO}" \
-drive "index=1,media=disk,file=${VMHDD}" \
-device "e1000,netdev=eth0,mac=${VMMAC0}" \
-netdev "bridge,id=eth0,br=${VMBR0}" \
-device "e1000,netdev=eth1,mac=${VMMAC1}" \
-netdev "bridge,id=eth1,br=${VMBR1}" \
-spice "addr=${VMSADDR},port=${VMSPORT},disable-ticketing=on"
