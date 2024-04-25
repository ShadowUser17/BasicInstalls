#### Install server on QEMU:
```bash
curl -sfL "https://get.k3s.io" | INSTALL_K3S_CHANNEL="v1.27.13+k3s1" sh -s - server \
--token "4Eja4ahRagJEhozmiRHKg3" \
--write-kubeconfig-mode "0644" \
--node-name "server" \
--with-node-id \
--disable "traefik" \
--node-taint "node-role.kubernetes.io/master:NoSchedule" \
--node-taint "node-role.kubernetes.io/control-plane:NoSchedule"
```

#### Install server on QEMU without network backend:
```bash
curl -sfL "https://get.k3s.io" | INSTALL_K3S_CHANNEL="v1.27.13+k3s1" sh -s - server \
--token "4Eja4ahRagJEhozmiRHKg3" \
--write-kubeconfig-mode "0644" \
--node-name "server" \
--with-node-id \
--disable "traefik" \
--flannel-backend "none" \
--disable-network-policy \
--node-taint "node-role.kubernetes.io/master:NoSchedule" \
--node-taint "node-role.kubernetes.io/control-plane:NoSchedule"
```

#### Install server on QEMU without default storage:
```bash
curl -sfL "https://get.k3s.io" | INSTALL_K3S_CHANNEL="v1.27.13+k3s1" sh -s - server \
--token "4Eja4ahRagJEhozmiRHKg3" \
--write-kubeconfig-mode "0644" \
--node-name "server" \
--with-node-id \
--disable "traefik" \
--disable "local-storage" \
--node-taint "node-role.kubernetes.io/master:NoSchedule" \
--node-taint "node-role.kubernetes.io/control-plane:NoSchedule"
```

#### Install agent on QEMU:
```bash
curl -sfL "https://get.k3s.io" | INSTALL_K3S_CHANNEL="v1.27.13+k3s1" sh -s - agent \
--server "https://192.168.56.11:6443" \
--token "4Eja4ahRagJEhozmiRHKg3" \
--node-name "agent" \
--with-node-id
```

#### Configure kubectl:
```bash
mkdir ~/.kube && scp k3s-server:/etc/rancher/k3s/k3s.yaml ~/.kube/ && \
sed 's/127\.0\.0\.1/192\.168\.56\.11/g' ~/.kube/k3s.yaml > ~/.kube/config && \
chmod 600 ~/.kube/config && rm -f ~/.kube/k3s.yaml
```
