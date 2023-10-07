#### Create TLS certificate:
```bash
openssl req -x509 -sha256 -nodes -newkey rsa:2048 -keyout tls.key -out tls.crt -days 730
```
```bash
kubectl -n testing create secret tls test-app-cert --key="tls.key" --cert="tls.crt"
```

#### Create Ingress with TLS:
```yaml
apiVersion: "networking.k8s.io/v1"
kind: "Ingress"
metadata:
  namespace: "testing"
  name: "k8s-test-app"
spec:
  ingressClassName: "nginx"
  tls:
    - hosts: ["testing.k3s"]
      secretName: "test-app-cert"
  rules:
    - host: "testing.k3s"
      http:
        paths:
          - path: "/"
            pathType: "Prefix"
            backend:
              service:
                name: "k8s-test-app"
                port:
                  number: 8080
```
