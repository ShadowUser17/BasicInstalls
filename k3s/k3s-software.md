### Install helm
```bash
curl -sfL 'https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3' | sh -
```
```bash
echo 'export KUBECONFIG="/etc/rancher/k3s/k3s.yaml"' >> ~/.bashrc
```

### Install nerdctl
```bash
mkdir /etc/nerdctl && \
curl -L "https://raw.githubusercontent.com/ShadowUser17/BasicInstalls/master/k3s/k3s-nerdctl.toml" \
-o "/etc/nerdctl/nerdctl.toml"
```
```bash
curl -L "https://github.com/containerd/nerdctl/releases/download/v0.23.0/nerdctl-0.23.0-linux-amd64.tar.gz" -o nerdctl-linux-amd64.tar.gz
```
```bash
tar -xzf nerdctl-linux-amd64.tar.gz nerdctl && mv ./nerdctl /usr/local/bin/
```

### Install datree
```bash
curl -sfL 'https://get.datree.io' | sh -
```
