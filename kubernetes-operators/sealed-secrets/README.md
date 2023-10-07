#### Install to cluster:
```bash
helm repo add sealed-secrets "https://bitnami-labs.github.io/sealed-secrets" && helm repo update
```
```bash
helm show values "sealed-secrets/sealed-secrets" > default-values.yml
```
```bash
helm upgrade --install sealed-secrets "sealed-secrets/sealed-secrets" -n kube-system
```

#### Get manifests:
```bash
helm template sealed-secrets "sealed-secrets/sealed-secrets" -n kube-system > manifests.yml
```

#### Install CLI:
```bash
curl -L "https://github.com/bitnami-labs/sealed-secrets/releases/download/v0.24.1/kubeseal-0.24.1-linux-amd64.tar.gz" -o "kubeseal-linux-amd64.tar.gz" && \
tar -xzf kubeseal-linux-amd64.tar.gz kubeseal && mv ./kubeseal /usr/local/bin/ && rm -f kubeseal-linux-amd64.tar.gz
```

#### URLs:
- [Docs](https://github.com/bitnami-labs/sealed-secrets/blob/main/README.md)
- [Charts](https://github.com/bitnami-labs/sealed-secrets/tree/main/helm/sealed-secrets)
- [Releases](https://github.com/bitnami-labs/sealed-secrets/releases)
