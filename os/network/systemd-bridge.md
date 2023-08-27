#### Configure bridge connection:
```bash
systemctl enable systemd-networkd.service --now
```
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
Address=192.168.56.1/24
DHCPServer=true
ConfigureWithoutCarrier=true

[DHCPServer]
PoolOffset=100
PoolSize=100
```
```bash
networkctl reload
```
```bash
networkctl list
```
