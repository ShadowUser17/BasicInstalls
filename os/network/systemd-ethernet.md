#### Configure ethernet connection:
```bash
systemctl enable systemd-networkd.service --now
```
```bash
systemctl enable systemd-resolved.service --now
```
```bash
touch /etc/systemd/network/ethernet.network
```
```toml
[Match]
Name=enp0s2

[Network]
DHCP=false
DNS=1.1.1.1
Address=192.168.56.12/24
Gateway=192.168.56.1
ConfigureWithoutCarrier=true
```
```bash
networkctl reload
```
```bash
networkctl list
```
