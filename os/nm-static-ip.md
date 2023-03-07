### NetworkManager configure static IP:
```bash
nmcli connection modify <cname> ipv4.method manual
```
```bash
nmcli connection modify <cname> ipv4.addresses <ip/mask>
```
```bash
nmcli connection modify <cname> ipv4.gateway <ip>
```
```bash
nmcli connection modify <cname> ipv4.dns <ns1> <ns2>
```
```bash
nmcli connection modify <cname> ipv4.dns-search <domain>
```
```bash
nmcli connection reload
```
