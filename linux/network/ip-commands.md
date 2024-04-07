#### Add IP address:
```bash
ip address add 192.168.56.11/24 dev eth0
```

#### Add default route:
```bash
ip route add default via 192.168.56.1 dev eth0
```

#### Create VLAN device:
```bash
ip link add link eth0 name eth0.100 type vlan id 100
```
```bash
ip link set eth0.100 up
```

#### Create Bridge device:
```bash
ip link add name br0 type bridge
```
```bash
ip link set eth0 master br0
```
```bash
ip link set br0 up
```

#### Remove interface from bridge:
```bash
ip link set eth1 nomaster
```
