#### Install first server
```bash
curl -sfL "https://get.k3s.io" | INSTALL_K3S_CHANNEL="v1.23.10+k3s1" sh -s - server \
--token=<secret> \
--tls-san <dnsname> --tls-san <ip> \
--cluster-init
```

#### Install second server
```bash
curl -sfL "https://get.k3s.io" | INSTALL_K3S_CHANNEL="v1.23.10+k3s1" sh -s - server \
--token=<secret> \
--tls-san <dnsname> --tls-san <ip> \
--server "https://<master>:6443"
```

#### Install agent
```bash
curl -sfL "https://get.k3s.io" | INSTALL_K3S_CHANNEL="v1.23.10+k3s1" sh -s - agent \
--token=<secret> \
--server "https://<master>:6443"
```
