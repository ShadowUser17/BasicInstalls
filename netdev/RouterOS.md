#### Create VM:
```bash
create_qemu_vm.py 104 --iso=mikrotik.iso --cpu=1 --cpu_opts="" --mem=128M --size=512M
```

#### Basic config:
```bash
/system/license/import file-name=qemu-license-v7.key
```
```bash
/user/ssh-keys/import user=admin public-key-file=virt_ssh_key.pub
```
```bash
/system/identity/set name=vros1
```
```bash
/ip/address/add address=192.168.55.104/24 interface=ether1
```
```bash
/ip/route/add dst-address=0.0.0.0/0 gateway=192.168.55.1 check-gateway=arp
```
```bash
/ip/dns/set servers=1.1.1.1,8.8.8.8
```

#### URLs:
- [Documentation](https://help.mikrotik.com/docs/display/ROS/RouterOS)
- [Download](https://mikrotik.com/download)
