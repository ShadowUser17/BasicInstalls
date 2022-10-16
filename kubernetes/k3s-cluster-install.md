#### Single install:
```bash
curl -sfL "https://get.k3s.io" | INSTALL_K3S_CHANNEL="v1.23.12+k3s1" sh -
```

#### Manual upgrade:
```bash
/usr/local/bin/k3s-killall.sh && curl -sfL "https://get.k3s.io" | INSTALL_K3S_CHANNEL="latest" sh -
```

#### Configure kubectl:
```bash
mkdir ~/.kube && scp vm-k3s-n1:/etc/rancher/k3s/k3s.yaml ~/.kube/
```
```bash
sed 's/127\.0\.0\.1/192\.168\.56\.13/g' ~/.kube/k3s.yaml > ~/.kube/config
```

#### Cluster install:
```bash
curl -sfL "https://get.k3s.io" | INSTALL_K3S_CHANNEL="v1.23.12+k3s1" sh -s - server \
--cluster-init --etcd-expose-metrics --token="4Eja4ahRagJEhozmiRHKg3"
```

#### Install second server:
```bash
curl -sfL "https://get.k3s.io" | INSTALL_K3S_CHANNEL="v1.23.12+k3s1" sh -s - server \
--server "https://192.168.56.13:6443" --token="4Eja4ahRagJEhozmiRHKg3"
```

#### Install agent:
```bash
curl -sfL "https://get.k3s.io" | INSTALL_K3S_CHANNEL="v1.23.12+k3s1" sh -s - agent \
--server "https://192.168.56.13:6443" --token="4Eja4ahRagJEhozmiRHKg3" --node-label "node.k3s.io/agent=true"
```

#### Recommended for master node:
```bash
kubectl taint nodes k3s-n1 "node-role.kubernetes.io/master:NoSchedule"
```
```bash
kubectl taint nodes k3s-n1 "node-role.kubernetes.io/control-plane:NoSchedule"
```
