#### Cluster install:
Add `--disable "traefik"` to installation script.

#### Install Nginx:
```bash
kubectl apply -f "https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.3.1/deploy/static/provider/cloud/deploy.yaml"
```

#### Usage Nginx:
```yaml
apiVersion: "networking.k8s.io/v1"
kind: "Ingress"
metadata:
  name: "test-ingress"
  namespace: "testing"
  annotations:
    nginx.ingress.kubernetes.io/ssl-redirect: "false"
spec:
  ingressClassName: "nginx"
  rules:
    - host: "testing.k3s"
      http:
        paths:
          - path: "/"
            pathType: "Prefix"
            backend:
              service:
                name: "test-service"
                port:
                  number: 80
```

#### Enable ModSecurity:
```bash
kubectl edit cm/ingress-nginx-controller -n ingress-nginx
```
```yaml
data:
  allow-snippet-annotations: "true"
  enable-modsecurity: "true"
  enable-owasp-modsecurity-crs: "true"
  modsecurity-snippet: |-
    SecRuleEngine On
    SecRequestBodyAccess On
```

#### Enable metrics:
```bash
kubectl edit deploy/ingress-nginx-controller -n ingress-nginx
```
```yaml
template:
  metadata:
    annotations:
      prometheus.io/scrape: "true"
      prometheus.io/port: "10254"
```
```yaml
ports:
  - containerPort: 10254
    name: prometheus
    protocol: TCP
```

#### Documentation:
- [ingress-nginx](https://github.com/kubernetes/ingress-nginx/)
- [k3s-networking](https://docs.k3s.io/networking)
