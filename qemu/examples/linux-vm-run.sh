#!/bin/bash
VMID="100"
VMSADDR="127.0.0.1"
VMSPORT="10${VMID}"
VMMPORT="20${VMID}"
VMPATH="/virtio"
VMISO=""
VMHDD="${VMPATH}/images/vm-${VMID}-001.qcow2"
VMMON="telnet:${VMSADDR}:${VMMPORT},server,nowait"
VMPID="${VMPATH}/qemu/${VMID}.pid"
VMBRID="virbr0"
VMMAC="02:13:BC:00:00:01"

echo -e "${VMID} (${VMMAC})"
echo -e "remmina -c spice://${VMSADDR}:${VMSPORT}"
echo -e "ncat -t ${VMSADDR} ${VMMPORT}"

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
