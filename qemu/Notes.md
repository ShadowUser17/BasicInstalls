#### Create disk:
```bash
qemu-img create -f qcow2 vm-100-001.qcow2 20G
```

#### Convert template:
```bash
qemu-img convert -f qcow2 -O qcow2 debian-nocloud-amd64.qcow2 vm-100-001.qcow2
```

#### Resize disk:
```bash
qemu-img resize vm-100-001.qcow2 +5G
```

#### Mount disk:
```bash
modprobe nbd
```
```bash
qemu-nbd -c /dev/nbd0 /var/lib/libvirt/images/vm-100-001.qcow2
```
```bash
mount /dev/vg1/root /mnt
```

#### Unmount disk:
```bash
umount /mnt
```
```bash
vgchange -an vg1
```
```bash
qemu-nbd -d /dev/nbd0
```

#### Enable SSE instructions:
```
-cpu "qemu64-v1,+ssse3,+sse4.1,+sse4.2"
```

#### Accelerations of QEMU:
- Windows: hax (Hyper-V)
- Linux: kvm
- MacOS: hvf
