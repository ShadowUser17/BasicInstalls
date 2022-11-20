### Install helm
```bash
curl -L "https://get.helm.sh/helm-v3.10.2-linux-amd64.tar.gz" -o helm-linux-amd64.tar.gz && \
tar -xzf helm-linux-amd64.tar.gz linux-amd64/helm && \
mv ./linux-amd64/helm /usr/local/bin/ && rmdir ./linux-amd64
```

### Install datree
```bash
curl -L "https://github.com/datreeio/datree/releases/download/1.8.1/datree-cli_1.8.1_Linux_x86_64.zip" -o datree-cli.zip && \
unzip datree-cli.zip datree && mv ./datree /usr/local/bin/
```

### Install kubescape
```bash
curl -L "https://github.com/kubescape/kubescape/releases/download/v2.0.176/kubescape-ubuntu-latest" -o kubescape && \
chmod 755 ./kubescape && mv ./kubescape /usr/local/bin/
```

### Install nerdctl
```bash
mkdir /etc/nerdctl && \
curl -L "https://raw.githubusercontent.com/ShadowUser17/BasicInstalls/master/kubernetes/k3s-nerdctl.toml" -o "/etc/nerdctl/nerdctl.toml"
```
```bash
curl -L "https://github.com/containerd/nerdctl/releases/download/v1.0.0/nerdctl-1.0.0-linux-amd64.tar.gz" -o nerdctl-linux-amd64.tar.gz && \
tar -xzf nerdctl-linux-amd64.tar.gz nerdctl && mv ./nerdctl /usr/local/bin/
```

### Install kubectl
```bash
curl -O -L 'https://storage.googleapis.com/kubernetes-release/release/v1.23.14/bin/linux/amd64/kubectl' && \
chmod +x ./kubectl && mv ./kubectl /usr/local/bin/
```

### Install krew
```bash
curl -L -O "https://github.com/kubernetes-sigs/krew/releases/download/v0.4.3/krew-linux_amd64.tar.gz" && \
tar -xzf ./krew-linux_amd64.tar.gz ./krew-linux_amd64 && mv ./krew-linux_amd64 /usr/local/bin/krew && \
echo 'export PATH="$PATH:$HOME/.krew/bin"' >> ~/.bashrc
```

### Install k9s
```bash
curl -O -L "https://github.com/derailed/k9s/releases/download/v0.26.7/k9s_Linux_x86_64.tar.gz" && \
tar -xzf k9s_Linux_x86_64.tar.gz k9s && rm -f k9s_Linux_x86_64.tar.gz && mv ./k9s /usr/local/bin/
```