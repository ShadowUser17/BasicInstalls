#### Install:
```bash
kubectl apply -f "https://github.com/cert-manager/cert-manager/releases/download/v1.13.1/cert-manager.yaml"
```

#### Install CLI:
```bash
curl -LO "https://github.com/cert-manager/cert-manager/releases/download/v1.13.1/cmctl-linux-amd64.tar.gz" && \
tar -xzf cmctl-linux-amd64.tar.gz cmctl && mv ./cmctl /usr/local/bin/ && rm -f cmctl-linux-amd64.tar.gz
```

#### URLs:
- [selfsigned-issuer](https://cert-manager.io/docs/configuration/selfsigned/)
- [ingress-usage](https://cert-manager.io/docs/usage/ingress/)
- [releases](https://github.com/cert-manager/cert-manager/releases)

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
