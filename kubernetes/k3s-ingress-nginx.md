#### Cluster install:
Add `--disable traefik` to installation script.

#### Install Kubernetes Nginx:
```bash
kubectl apply -f "https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.6.4/deploy/static/provider/cloud/deploy.yaml"
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

#### Install Nginx Controller:
```bash
helm repo add nginx-stable "https://helm.nginx.com/stable" && \
helm repo update
```
```bash
helm template helm "nginx-stable/nginx-ingress" \
--namespace nginx-ingress \
--version "0.16.2" > nginx-ingress-helm-v0.16.2.yaml
```

#### Documentation:
- [k8s-ingress-nginx](https://github.com/kubernetes/ingress-nginx/)
- [nginx-ingress-nginx](https://github.com/nginxinc/kubernetes-ingress)
- [k3s-networking](https://docs.k3s.io/networking)
