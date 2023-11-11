#### Install server on QEMU:
```bash
curl -sfL "https://get.k3s.io" | INSTALL_K3S_CHANNEL="v1.26.10+k3s2" sh -s - server \
--token "4Eja4ahRagJEhozmiRHKg3" \
--write-kubeconfig-mode "0644" \
--node-name "server" \
--with-node-id \
--disable "traefik" \
--node-taint "node-role.kubernetes.io/master:NoSchedule" \
--node-taint "node-role.kubernetes.io/control-plane:NoSchedule"
```

#### Install agent on QEMU:
```bash
curl -sfL "https://get.k3s.io" | INSTALL_K3S_CHANNEL="v1.26.10+k3s2" sh -s - agent \
--server "https://192.168.56.11:6443" \
--token "4Eja4ahRagJEhozmiRHKg3" \
--node-name "agent" \
--with-node-id
```
