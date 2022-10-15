#### Single install:
```bash
curl -sfL "https://get.k3s.io" | INSTALL_K3S_CHANNEL="v1.23.12+k3s1" sh -
```

#### Manual upgrade:
```bash
/usr/local/bin/k3s-killall.sh
```
```bash
curl -sfL "https://get.k3s.io" | INSTALL_K3S_CHANNEL="latest" sh -
```

#### Configure kubectl:
```bash
mkdir ~/.kube && scp vm-k3s-master:/etc/rancher/k3s/k3s.yaml ~/.kube/config
```
