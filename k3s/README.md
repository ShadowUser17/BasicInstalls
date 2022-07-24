### Install k3s
```bash
curl -sfL 'https://get.k3s.io' | INSTALL_K3S_CHANNEL=latest sh -
```

### Install Helm
```bash
curl -sfL 'https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3' | sh -
```
```bash
echo 'export KUBECONFIG=/etc/rancher/k3s/k3s.yaml' >> ~/.bashrc
```

### Install Datree
```bash
curl -sfL 'https://get.datree.io' | sh -
```
