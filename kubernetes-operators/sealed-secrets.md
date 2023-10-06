#### Install controller:
```bash
kubectl apply -f "https://github.com/bitnami-labs/sealed-secrets/releases/download/v0.24.1/controller.yaml"
```

#### Install CLI:
```bash
curl -L "https://github.com/bitnami-labs/sealed-secrets/releases/download/v0.24.1/kubeseal-0.24.1-linux-amd64.tar.gz" -o "kubeseal-linux-amd64.tar.gz" && \
tar -xzf kubeseal-linux-amd64.tar.gz kubeseal && mv ./kubeseal /usr/local/bin/ && rm -f kubeseal-linux-amd64.tar.gz
```

#### URLs:
- [README](https://github.com/bitnami-labs/sealed-secrets/blob/main/README.md)
- [Releases](https://github.com/bitnami-labs/sealed-secrets/releases)
