### NetworkManager configure bridge network:
```bash
nmcli connection add type bridge ifname virbr0
```
```bash
nmcli connection modify bridge-virbr0 bridge.stp no
```
```bash
nmcli connection add type bridge-slave ifname eth0 master virbr0
```
```bash
nmcli connection modify bridge-virbr0 ipv4.addresses 192.168.55.1/24
```
```bash
nmcli connection modify bridge-virbr0 ipv4.method manual
```
```bash
nmcli connection modify bridge-virbr0 ipv6.method disabled
```
```bash
nmcli connection up bridge-virbr0
```
