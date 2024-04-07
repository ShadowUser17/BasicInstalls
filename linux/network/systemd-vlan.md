#### Configure vlan connection:
```bash
touch /etc/systemd/network/eth0.100.netdev
```
```toml
[NetDev]
Name=eth0.100
Kind=vlan

[VLAN]
Id=100
```
```bash
touch /etc/systemd/network/eth0.100.network
```
```toml
[Match]
Name=eth0.100

[Network]
DHCP=false
Address=192.168.57.14/24
ConfigureWithoutCarrier=true
```
