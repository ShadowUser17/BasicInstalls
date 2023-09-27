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

#### Enable process capabilities check:
```bash
kubectl edit cm tetragon-config -n kube-system
```
```yaml
data:
  enable-process-cred: "true"
  enable-process-ns: "true"
```

#### URLs:
- [Docs](https://tetragon.cilium.io/docs/)
- [Releases](https://github.com/cilium/tetragon/releases)
- [helm-chart](https://tetragon.cilium.io/docs/reference/helm-chart/)
