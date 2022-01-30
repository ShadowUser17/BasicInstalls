#!/bin/bash
VMID="debian-generic-amd64"
VMPATH="/virtio"
VMSPORT="1101"
VMMPORT="1201"
VMSADDR="127.0.0.1"
VMISO=""
VMHDD="${VMPATH}/images/${VMID}.qcow2"
VMSOP="telnet:${VMSADDR}:${VMSPORT},server,nowait"
VMMON="telnet:${VMSADDR}:${VMMPORT},server,nowait"
VMPID="${VMPATH}/qemu/${VMID}.pid"
VMBRID="virbr0"
VMMAC="02:13:BC:00:00:01"

echo -e "Name: ${VMID} (${VMMAC})"
echo -e "Access: ${VMSADDR}:${VMSPORT}"
echo -e "Monitor: ${VMSADDR}:${VMMPORT}"

qemu-system-x86_64 -nodefaults \
-name "${VMID}" -pidfile "${VMPID}" -daemonize \
-bios "/usr/share/ovmf/x64/OVMF.fd" \
-boot "order=c,menu=on" -monitor "${VMMON}" \
-smp "sockets=1,cores=1" -m 2G \
-display none -serial "${VMSOP}" \
-cpu qemu64-v1 -machine "type=q35,accel=kvm" \
-drive "if=ide,media=cdrom,file=${VMISO}" \
-drive "if=virtio,index=0,media=disk,file=${VMHDD}" \
-device "virtio-net,netdev=eth0,mac=${VMMAC}" \
-netdev "bridge,id=eth0,br=${VMBRID}"

