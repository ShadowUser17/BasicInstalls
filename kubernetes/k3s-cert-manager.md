#### Install:
```bash
kubectl apply -f "https://github.com/cert-manager/cert-manager/releases/download/v1.10.2/cert-manager.yaml"
```

#### Usage:
- Create Issuer or ClusterIssuer: [doc](https://cert-manager.io/docs/configuration/selfsigned/)
- Edit Ingress: [doc](https://cert-manager.io/docs/usage/ingress/)

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
