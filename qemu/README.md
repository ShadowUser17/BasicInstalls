#### Create disk:
```bash
qemu-img create -f qcow2 vm-100-001.qcow2 20G
```

#### Resize disk:
```bash
qemu-img resize vm-100-001.qcow2 +5G
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
