### Install k3s first server
```bash
curl -sfL 'https://get.k3s.io' | INSTALL_K3S_CHANNEL=latest sh -s - server \
--token=<secret> \
--tls-san <dnsname> --tls-san <ip> \
--cluster-init
```

### Install k3s second server
```bash
curl -sfL 'https://get.k3s.io' | INSTALL_K3S_CHANNEL=latest sh -s - server \
--token=<secret> \
--tls-san <dnsname> --tls-san <ip> \
--server "https://<master>:6443"
```

### Install k3s agent
```bash
curl -sfL 'https://get.k3s.io' | INSTALL_K3S_CHANNEL=latest sh -s - agent \
--token=<secret> \
--server "https://<master>:6443"
```
