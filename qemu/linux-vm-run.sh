#!/bin/bash
VMID="debpc1"
VMSADDR="127.0.0.1"
VMSPORT="1101"
VMMPORT="1201"
VMPATH="/virtio"
VMISO=""
VMHDD="${VMPATH}/images/${VMID}-disk001.qcow2"
VMMON="telnet:${VMSADDR}:${VMMPORT},server,nowait"
VMPID="${VMPATH}/qemu/${VMID}.pid"
VMBRID="virbr0"
VMMAC="02:13:BC:00:00:01"

echo -e "Name: ${VMID} (${VMMAC})"
echo -e "Access: ${VMSADDR}:${VMSPORT}"
echo -e "Monitor: ${VMSADDR}:${VMMPORT}"

qemu-system-x86_64 -nodefaults \
-boot "order=c,menu=on" -monitor "${VMMON}" \
-smp "sockets=1,cores=1" -m 1G -vga qxl \
-cpu qemu64-v1 -machine "type=q35,accel=kvm" \
-name "${VMID}" -pidfile "${VMPID}" -daemonize \
-drive "if=ide,media=cdrom,file=${VMISO}" \
-drive "if=virtio,index=0,media=disk,file=${VMHDD}" \
-device "virtio-net,netdev=eth0,mac=${VMMAC}" \
-netdev "bridge,id=eth0,br=${VMBRID}" \
-spice "addr=${VMSADDR},port=${VMSPORT},disable-ticketing=on"
