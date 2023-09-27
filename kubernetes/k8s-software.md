#### Install helm
```bash
curl -L "https://get.helm.sh/helm-v3.13.0-linux-amd64.tar.gz" -o helm-linux-amd64.tgz && \
tar -xzf helm-linux-amd64.tgz linux-amd64/helm && \
mv ./linux-amd64/helm /usr/local/bin/ && rm -f helm-linux-amd64.tgz && rmdir ./linux-amd64
```

#### Install datree
```bash
curl -L "https://github.com/datreeio/datree/releases/download/1.9.19/datree-cli_1.9.19_Linux_x86_64.zip" -o datree-cli.zip && \
unzip datree-cli.zip datree && mv ./datree /usr/local/bin/ && rm -f datree-cli.zip
```

#### Install kubescape
```bash
curl -L "https://github.com/kubescape/kubescape/releases/download/v2.9.1/kubescape-ubuntu-latest" -o kubescape && \
chmod 755 ./kubescape && mv ./kubescape /usr/local/bin/
```

#### Install kubectl
```bash
curl -LO "https://storage.googleapis.com/kubernetes-release/release/v1.25.14/bin/linux/amd64/kubectl" && \
chmod +x ./kubectl && mv ./kubectl /usr/local/bin/
```

#### Install rbac-lookup
```bash
curl -L "https://github.com/FairwindsOps/rbac-lookup/releases/download/v0.10.2/rbac-lookup_0.10.2_Linux_x86_64.tar.gz" -o rbac-lookup.tgz && \
tar -xzf rbac-lookup.tgz rbac-lookup && mv ./rbac-lookup /usr/local/bin/ && rm -f rbac-lookup.tgz
```

#### Install krew
```bash
curl -L -O "https://github.com/kubernetes-sigs/krew/releases/download/v0.4.4/krew-linux_amd64.tar.gz" && \
tar -xzf ./krew-linux_amd64.tar.gz ./krew-linux_amd64 && mv ./krew-linux_amd64 /usr/local/bin/krew && \
echo 'export PATH="$PATH:$HOME/.krew/bin"' >> ~/.bashrc && rm -f ./krew-linux_amd64.tar.gz
```
