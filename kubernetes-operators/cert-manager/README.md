#### Install to cluster:
```bash
helm repo add jetstack "https://charts.jetstack.io" && helm repo update
```
```bash
helm upgrade --install cert-manager "jetstack/cert-manager" -f values.yml -n cert-manager --version "v1.14.3" --create-namespace
```
```bash
kubectl apply -f cluster-issuer.yml
```

#### Check updates:
```bash
helm search repo "jetstack/cert-manager"
```

#### Get default values:
```bash
helm show values "jetstack/cert-manager" > default-values.yml
```

#### Get manifests:
```bash
helm template cert-manager "jetstack/cert-manager" -f values.yml -n cert-manager --version "v1.14.3" > manifests.yml
```

#### Enable monitoring:
```bash
kubectl apply -f monitoring.yml
```

#### Install CLI:
```bash
curl -LO "https://github.com/cert-manager/cert-manager/releases/download/v${version}/cmctl-linux-amd64.tar.gz" && \
tar -xzf cmctl-linux-amd64.tar.gz cmctl && mv ./cmctl /usr/local/bin/ && rm -f cmctl-linux-amd64.tar.gz
```

#### Certificate example:
```yaml
apiVersion: "cert-manager.io/v1"
kind: "Issuer"
metadata:
  name: "testing-issuer"
  namespace: "testing"
spec:
  selfSigned: {}
```
```yaml
apiVersion: "cert-manager.io/v1"
kind: "Certificate"
metadata:
  name: "testing-ing-cert"
  namespace: "testing"
spec:
  dnsNames: ["testing.k3s"]
  secretName: "testing-ing-cert"
  issuerRef:
    name: "testing-issuer"
```

#### URLs:
- [Docs](https://cert-manager.io/docs/)
- [Chart](https://artifacthub.io/packages/helm/cert-manager/cert-manager)
- [Releases](https://github.com/cert-manager/cert-manager/releases)
