#### URLs:
- [Docs](https://cert-manager.io/docs/)
- [Chart](https://artifacthub.io/packages/helm/cert-manager/cert-manager)
- [Releases](https://github.com/cert-manager/cert-manager/releases)

#### Install CLI:
```bash
curl -LO "https://github.com/cert-manager/cert-manager/releases/download/v${version}/cmctl-linux-amd64.tar.gz" && \
tar -xzf cmctl-linux-amd64.tar.gz cmctl && mv ./cmctl /usr/local/bin/ && rm -f cmctl-linux-amd64.tar.gz
```

#### Create certificate:
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
    kind: "Issuer"
    name: "testing-issuer"
```

#### Ingress annotations:
```yaml
annotations:
  cert-manager.io/cluster-issuer: "k8s-cluster-issuer"
```
```yaml
annotations:
  cert-manager.io/inject-ca-from: "testing/testing-certs"
```
