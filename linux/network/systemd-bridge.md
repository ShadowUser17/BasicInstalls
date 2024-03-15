#### Configure bridge connection:
```bash
touch /etc/systemd/network/virbr0.netdev
```
```toml
[NetDev]
Name=virbr0
Kind=bridge
```
```bash
touch /etc/systemd/network/virbr0.network
```
```toml
[Match]
Name=virbr0

[Network]
DHCP=false
DNS=1.1.1.1
Address=192.168.56.12/24
Gateway=192.168.56.1
ConfigureWithoutCarrier=true
```

#### Add interface to bridge:
```bash
touch /etc/systemd/network/eth0.network
```
```toml
[Match]
Name=eth0

[Network]
Bridge=virbr0
ConfigureWithoutCarrier=true
```
