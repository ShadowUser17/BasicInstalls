#### Create disk:
```bash
qemu-img create -f qcow2 vm-100-001.qcow2 20G
```

#### Resize disk:
```bash
qemu-img resize vm-100-001.qcow2 +5G
```

#### Create snapshot:
- Warning! Making any changes to the base file will corrupt the snapshot image!
```bash
qemu-img create -f qcow2 -b vm-100-001.qcow2 -F qcow2 vm-100-001-snapshot.qcow2
```

#### Merge snapshot:
```bash
qemu-img commit vm-100-001-snapshot.qcow2
```

#### Create new base image:
```bash
qemu-img convert -O qcow2 vm-100-001-snapshot.qcow2 vm-100-001-v2.qcow2
```

#### Convert template:
```bash
qemu-img convert -f qcow2 -O qcow2 debian-nocloud-amd64.qcow2 vm-100-001.qcow2
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
