#### Install server on QEMU:
```bash
curl -sfL "https://get.k3s.io" | INSTALL_K3S_CHANNEL="v1.25.13+k3s1" sh -s - server \
--token "4Eja4ahRagJEhozmiRHKg3" \
--write-kubeconfig-mode "0644" \
--node-name "server" \
--with-node-id \
--node-taint "node-role.kubernetes.io/master:NoSchedule" \
--node-taint "node-role.kubernetes.io/control-plane:NoSchedule" \
--disable-helm-controller \
--disable "traefik"
```

#### Install agent on QEMU:
```bash
curl -sfL "https://get.k3s.io" | INSTALL_K3S_CHANNEL="v1.25.13+k3s1" sh -s - agent \
--server "https://192.168.56.11:6443" \
--token "4Eja4ahRagJEhozmiRHKg3" \
--node-name "agent" \
--with-node-id
```
