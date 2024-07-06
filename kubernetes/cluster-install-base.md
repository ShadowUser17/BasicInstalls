#### Install server on VirtualBox:
```bash
curl -sfL "https://get.k3s.io" | INSTALL_K3S_CHANNEL="v1.27.15+k3s1" sh -s - server \
--token "4Eja4ahRagJEhozmiRHKg3" \
--write-kubeconfig-mode "0644" \
--node-name "server" \
--with-node-id \
--node-ip "192.168.56.11" \
--flannel-iface "eth1" \
--disable "traefik"
```

#### Install agent on VirtualBox:
```bash
curl -sfL "https://get.k3s.io" | INSTALL_K3S_CHANNEL="v1.27.15+k3s1" sh -s - agent \
--server "https://192.168.56.11:6443" \
--token "4Eja4ahRagJEhozmiRHKg3" \
--node-name "agent" \
--with-node-id \
--node-ip "192.168.56.12" \
--flannel-iface "eth1"
```

#### Configure kubectl:
```bash
mkdir ~/.kube && scp k3s-server:/etc/rancher/k3s/k3s.yaml ~/.kube/ && \
sed 's/127\.0\.0\.1/192\.168\.56\.11/g' ~/.kube/k3s.yaml > ~/.kube/config && \
chmod 600 ~/.kube/config && rm -f ~/.kube/k3s.yaml
```

#### Recommended for master node:
```bash
--node-taint "node-role.kubernetes.io/master:NoSchedule" \
--node-taint "node-role.kubernetes.io/control-plane:NoSchedule"
```

#### Optional parameters:
- Append random suffix to a node name: `--with-node-id`
- Write kubeconfig with this mode: `--write-kubeconfig-mode 0644`
- Enable etcd: `--cluster-init` and metrics: `--etcd-expose-metrics`
- Set node IP: `--node-ip` and disable security: `--flannel-backend host-gw`
- Set network interface: `--flannel-iface eth1` (Multiple interfaces!)
- Disable helm controller: `--disable-helm-controller`
- Disable default ingress controller: `--disable traefik`
- Disable default dns: `--disable coredns`
- Disable default LB: `--disable servicelb`
