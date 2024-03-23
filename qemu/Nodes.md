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

#### Create VMs:
```bash
create_qemu_vm.py 100 --iso debian-latest-amd64-DVD-1.iso --net virbr1 --cpu 2 --mem 8G --size 32G
```
```bash
create_qemu_vm.py 101 --iso debian-latest-amd64-DVD-1.iso --net virbr1 --cpu 4 --mem 16G --size 64G
```
