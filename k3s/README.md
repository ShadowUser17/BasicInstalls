### Single install:
```bash
curl -sfL 'https://get.k3s.io' | INSTALL_K3S_CHANNEL=latest sh -
```

### Manual upgrade:
```bash
/usr/local/bin/k3s-killall.sh
```
```bash
curl -sfL 'https://get.k3s.io' | INSTALL_K3S_CHANNEL=latest sh -
```

### Cluster install:

#### Install first server
```bash
curl -sfL 'https://get.k3s.io' | INSTALL_K3S_CHANNEL=latest sh -s - server \
--token=<secret> \
--tls-san <dnsname> --tls-san <ip> \
--cluster-init
```

#### Install second server
```bash
curl -sfL 'https://get.k3s.io' | INSTALL_K3S_CHANNEL=latest sh -s - server \
--token=<secret> \
--tls-san <dnsname> --tls-san <ip> \
--server "https://<master>:6443"
```

#### Install agent
```bash
curl -sfL 'https://get.k3s.io' | INSTALL_K3S_CHANNEL=latest sh -s - agent \
--token=<secret> \
--server "https://<master>:6443"
```
