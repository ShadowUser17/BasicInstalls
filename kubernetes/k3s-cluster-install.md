#### Single install:
```bash
curl -sfL "https://get.k3s.io" | INSTALL_K3S_CHANNEL="v1.23.13+k3s1" sh -
```

#### Install first server:
```bash
curl -sfL "https://get.k3s.io" | INSTALL_K3S_CHANNEL="v1.23.13+k3s1" sh -s - server \
--cluster-init --disable-helm-controller --etcd-expose-metrics \
--write-kubeconfig-mode "0600" --token="4Eja4ahRagJEhozmiRHKg3" \
--node-taint "node-role.kubernetes.io/master:NoSchedule" \
--node-taint "node-role.kubernetes.io/control-plane:NoSchedule"
```

#### Install second server:
```bash
curl -sfL "https://get.k3s.io" | INSTALL_K3S_CHANNEL="v1.23.13+k3s1" sh -s - server \
--server "https://192.168.56.13:6443" --token="4Eja4ahRagJEhozmiRHKg3"
```

#### Install agent:
```bash
curl -sfL "https://get.k3s.io" | INSTALL_K3S_CHANNEL="v1.23.13+k3s1" sh -s - agent \
--server "https://192.168.56.13:6443" --token="4Eja4ahRagJEhozmiRHKg3"
```

#### Configure kubectl:
```bash
mkdir ~/.kube && scp vm-k3s-n1:/etc/rancher/k3s/k3s.yaml ~/.kube/ && \
sed 's/127\.0\.0\.1/192\.168\.56\.13/g' ~/.kube/k3s.yaml > ~/.kube/config && \
chmod 600 ~/.kube/config && rm -f ~/.kube/k3s.yaml
```
