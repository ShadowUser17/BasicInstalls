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

#### Configure access:
```bash
ssh-keygen -t rsa -b 2048 -f ~/.ssh/keys/qemu_ssh_key -P ''
```
```bash
ssh-copy-id -i ~/.ssh/keys/qemu_ssh_key root@vm-100
```
```bash
echo -n '
Host vm-100
HostName 192.168.56.10
User root
IdentityFile ~/.ssh/keys/qemu_ssh_key
' >> ~/.ssh/config
```

#### Accelerations of QEMU:
- Windows: hax (Hyper-V)
- Linux: kvm
- MacOS: hvf
