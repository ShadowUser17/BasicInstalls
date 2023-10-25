#### Install to cluster:
```bash
helm repo add jetstack "https://charts.jetstack.io" && helm repo update
```
```bash
helm show values "jetstack/cert-manager" > default-values.yml
```
```bash
helm upgrade --install cert-manager "jetstack/cert-manager" -f values.yml -n cert-manager --create-namespace
```

#### Get available charts:
```bash
helm search repo jetstack
```

#### Get manifests:
```bash
helm template cert-manager "jetstack/cert-manager" -f values.yml -n cert-manager > manifests.yml
```

#### Install CLI:
```bash
curl -LO "https://github.com/cert-manager/cert-manager/releases/download/v${version}/cmctl-linux-amd64.tar.gz" && \
tar -xzf cmctl-linux-amd64.tar.gz cmctl && mv ./cmctl /usr/local/bin/ && rm -f cmctl-linux-amd64.tar.gz
```

#### Example:
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
- [docs](https://cert-manager.io/docs/)
- [charts](https://artifacthub.io/packages/helm/cert-manager/cert-manager)
- [releases](https://github.com/cert-manager/cert-manager/releases)
