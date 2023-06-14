### Install helm
```bash
curl -L "https://get.helm.sh/helm-v3.12.1-linux-amd64.tar.gz" -o helm-linux-amd64.tgz && \
tar -xzf helm-linux-amd64.tgz linux-amd64/helm && \
mv ./linux-amd64/helm /usr/local/bin/ && rm -f helm-linux-amd64.tgz && rmdir ./linux-amd64
```

### Install datree
```bash
curl -L "https://github.com/datreeio/datree/releases/download/1.9.3/datree-cli_1.9.3_Linux_x86_64.zip" -o datree-cli.zip && \
unzip datree-cli.zip datree && mv ./datree /usr/local/bin/ && rm -f datree-cli.zip
```

### Install kubescape
```bash
curl -L "https://github.com/kubescape/kubescape/releases/download/v2.3.5/kubescape-ubuntu-latest" -o kubescape && \
chmod 755 ./kubescape && mv ./kubescape /usr/local/bin/
```

### Install nerdctl
```bash
mkdir /etc/nerdctl && \
curl -L "https://raw.githubusercontent.com/ShadowUser17/BasicInstalls/master/kubernetes/k3s-nerdctl.toml" -o "/etc/nerdctl/nerdctl.toml"
```
```bash
curl -L "https://github.com/containerd/nerdctl/releases/download/v1.4.0/nerdctl-1.4.0-linux-amd64.tar.gz" -o nerdctl-linux-amd64.tgz && \
tar -xzf nerdctl-linux-amd64.tgz nerdctl && mv ./nerdctl /usr/local/bin/ && rm -f nerdctl-linux-amd64.tgz
```

### Install kubectl
```bash
curl -LO "https://storage.googleapis.com/kubernetes-release/release/v1.25.10/bin/linux/amd64/kubectl" && \
chmod +x ./kubectl && mv ./kubectl /usr/local/bin/
```

### Install krew
```bash
curl -L -O "https://github.com/kubernetes-sigs/krew/releases/download/v0.4.3/krew-linux_amd64.tar.gz" && \
tar -xzf ./krew-linux_amd64.tar.gz ./krew-linux_amd64 && mv ./krew-linux_amd64 /usr/local/bin/krew && \
echo 'export PATH="$PATH:$HOME/.krew/bin"' >> ~/.bashrc && rm -f ./krew-linux_amd64.tar.gz
```
