#### Install script:
```bash
curl -L "https://raw.githubusercontent.com/ShadowUser17/LinuxTools/master/create_qemu_vm.py" -o ~/.local/bin/ &&
chmod 755 ~/.local/bin/create_qemu_vm.py
```

#### Configure script:
```bash
export QEMU_ISO_DIR="$HOME/qemu/iso"
export QEMU_TMP_DIR="$HOME/qemu/tmp"
export QEMU_VMS_DIR="/nvme/qemu/vms"
```

#### Create VM:
```bash
create_qemu_vm.py 100 --cpu=2 --mem=8G --size=32G --net=virbr1 --uefi --iso=debian-latest-amd64-DVD-1.iso
```

#### Access to VM:
```bash
remmina -c "spice://127.0.0.1:10100"
```
```bash
ncat -t 127.0.0.1 20100
```

#### Configure SSH:
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
