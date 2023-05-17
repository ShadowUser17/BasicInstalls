#### Cluster install:
Add `--disable traefik` to installation script.

#### Install Kubernetes Nginx:
```bash
kubectl apply -f "https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.7.1/deploy/static/provider/cloud/deploy.yaml"
```

#### Enable ModSecurity in Kubernetes Nginx:
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

#### Enable metrics in Kubernetes Nginx:
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

#### URLs:
- [k8s-ingress-nginx-docs](https://github.com/kubernetes/ingress-nginx/)
- [k8s-ingress-nginx-releases](https://github.com/kubernetes/ingress-nginx/releases)
- [nginx-ingress-docs](https://github.com/nginxinc/kubernetes-ingress)
- [nginx-ingress-releases](https://github.com/nginxinc/kubernetes-ingress/releases)
- [k3s-networking-docs](https://docs.k3s.io/networking)
