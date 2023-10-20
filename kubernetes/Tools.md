#### Install helm
```bash
curl -L "https://get.helm.sh/helm-v${version}-linux-amd64.tar.gz" -o helm-linux-amd64.tgz && \
tar -xzf helm-linux-amd64.tgz linux-amd64/helm && \
mv ./linux-amd64/helm /usr/local/bin/ && rm -f helm-linux-amd64.tgz && rmdir ./linux-amd64
```

#### Install datree
```bash
curl -L "https://github.com/datreeio/datree/releases/download/${version}/datree-cli_${version}_Linux_x86_64.zip" -o datree-cli.zip && \
unzip datree-cli.zip datree && mv ./datree /usr/local/bin/ && rm -f datree-cli.zip
```

#### Install kubescape
```bash
curl -L "https://github.com/kubescape/kubescape/releases/download/v${version}/kubescape-ubuntu-latest" -o kubescape && \
chmod 755 ./kubescape && mv ./kubescape /usr/local/bin/
```

#### Install kubectl
```bash
curl -LO "https://storage.googleapis.com/kubernetes-release/release/v${version}/bin/linux/amd64/kubectl" && \
chmod +x ./kubectl && mv ./kubectl /usr/local/bin/
```

#### Install rbac-lookup
```bash
curl -L "https://github.com/FairwindsOps/rbac-lookup/releases/download/v${version}/rbac-lookup_${version}_Linux_x86_64.tar.gz" -o rbac-lookup.tgz && \
tar -xzf rbac-lookup.tgz rbac-lookup && mv ./rbac-lookup /usr/local/bin/ && rm -f rbac-lookup.tgz
```

#### Install krew
```bash
curl -L -O "https://github.com/kubernetes-sigs/krew/releases/download/v${version}/krew-linux_amd64.tar.gz" && \
tar -xzf ./krew-linux_amd64.tar.gz ./krew-linux_amd64 && mv ./krew-linux_amd64 /usr/local/bin/krew && \
echo 'export PATH="$PATH:$HOME/.krew/bin"' >> ~/.bashrc && rm -f ./krew-linux_amd64.tar.gz
```