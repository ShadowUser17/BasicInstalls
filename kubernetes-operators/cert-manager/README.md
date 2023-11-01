#### Install to cluster:
```bash
helm repo add jetstack "https://charts.jetstack.io" && helm repo update
```
```bash
helm show values "jetstack/cert-manager" > cert-manager-default-values.yml
```
```bash
helm upgrade --install cert-manager "jetstack/cert-manager" -f cert-manager-values.yml -n cert-manager --create-namespace
```
```bash
helm show values "jetstack/cert-manager-csi-driver" > cert-manager-csi-default-values.yml
```
```bash
helm upgrade --install cert-manager-csi-driver "jetstack/cert-manager-csi-driver" -f cert-manager-csi-values.yml -n cert-manager
```

#### Get available charts:
```bash
helm search repo jetstack
```

#### Get manifests:
```bash
helm template cert-manager "jetstack/cert-manager" -f values.yml -n cert-manager > cert-manager-manifests.yml
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

#### CSI example:
```bash
kubectl get csidrivers
```
```yaml
spec:
  volumes:
    - name: "tls"
      csi:
        driver: "csi.cert-manager.io"
        volumeAttributes:
          csi.cert-manager.io/issuer-name: "ca-issuer"
          csi.cert-manager.io/dns-names: "${POD_NAME}.${POD_NAMESPACE}.svc.cluster.local"
```

#### URLs:
- [cert-manager-docs](https://cert-manager.io/docs/)
- [cert-manager-csi-docs](https://cert-manager.io/docs/usage/csi/)
- [cert-manager-chart](https://artifacthub.io/packages/helm/cert-manager/cert-manager)
- [cert-manager-releases](https://github.com/cert-manager/cert-manager/releases)
