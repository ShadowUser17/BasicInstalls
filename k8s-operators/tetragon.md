#### Install to cluster:
```bash
helm repo add cilium "https://helm.cilium.io" && helm repo update
```
```bash
helm install tetragon cilium/tetragon -n kube-system
```

#### Install CLI:
```bash
curl -LO "https://github.com/cilium/tetragon/releases/latest/download/tetra-linux-amd64.tar.gz" && \
tar -xzf tetra-linux-amd64.tar.gz tetra && mv ./tetra /usr/local/bin/ && rm -f tetra-linux-amd64.tar.gz
```

#### Export manifests:
```bash
helm template tetragon cilium/tetragon -n kube-system > tetragon-deploy.yml
```

#### Show logs:
```bash
kubectl logs -n kube-system -l "app.kubernetes.io/name=tetragon" -c export-stdout -f | tetra getevents -o compact
```

#### URLs:
- [Docs](https://tetragon.cilium.io/docs/)
- [Releases](https://github.com/cilium/tetragon/releases)
