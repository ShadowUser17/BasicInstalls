#!/bin/bash
VMID="fedora-coreos"
VMPATH="/virtio"
VMSPORT="1103"
VMMPORT="1203"
VMSADDR="127.0.0.1"
VMISO=""
VMHDD="${VMPATH}/images/${VMID}.qcow2"
VMSOP="telnet:${VMSADDR}:${VMSPORT},server,nowait"
VMMON="telnet:${VMSADDR}:${VMMPORT},server,nowait"
VMCFG="${VMPATH}/qemu/${VMID}.ign"
VMPID="${VMPATH}/qemu/${VMID}.pid"
VMBRID="virbr0"
VMMAC="02:13:BC:00:00:03"

echo -e "Name: ${VMID} (${VMMAC})"
echo -e "Access: ${VMSADDR}:${VMSPORT}"
echo -e "Monitor: ${VMSADDR}:${VMMPORT}"
echo -e "Config: \"${VMCFG}\""

qemu-system-x86_64 -nodefaults \
-name "${VMID}" -pidfile "${VMPID}" -daemonize \
-bios "/usr/share/ovmf/x64/OVMF.fd" \
-fw_cfg "name=opt/com.coreos/config,file=${VMCFG}" \
-boot "order=c,menu=on" -monitor "${VMMON}" \
-smp "sockets=1,cores=1" -m 2G \
-display none -serial "${VMSOP}" \
-cpu qemu64-v1 -machine "type=q35,accel=kvm" \
-drive "if=ide,media=cdrom,file=${VMISO}" \
-drive "if=virtio,index=0,media=disk,file=${VMHDD}" \
-device "virtio-net,netdev=eth0,mac=${VMMAC}" \
-netdev "bridge,id=eth0,br=${VMBRID}"

