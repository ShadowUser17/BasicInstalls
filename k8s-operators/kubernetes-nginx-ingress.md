#### Before cluster install:
Add `--disable traefik` to installation script.

#### Install ingress to cluster:
```bash
kubectl apply -f "https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.9.1/deploy/static/provider/cloud/deploy.yaml"
```

#### Alternative installation:
```bash
helm repo add ingress-nginx "https://kubernetes.github.io/ingress-nginx" && helm repo update
```
```bash
helm show values "ingress-nginx/ingress-nginx" > values.yml
```
```bash
helm upgrade --install ingress-nginx "ingress-nginx/ingress-nginx" -f values.yml -n ingress-nginx --create-namespace
```

#### Get default manifests:
```bash
helm template ingress-nginx "ingress-nginx/ingress-nginx" -n ingress-nginx --create-namespace > manifests.yml
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

#### URLs:
- [k3s-networking-docs](https://docs.k3s.io/networking)
- [k8s-ingress-concepts](https://kubernetes.io/docs/concepts/services-networking/ingress/)
- [k8s-ingress-nginx-docs](https://kubernetes.github.io/ingress-nginx/)
- [k8s-ingress-nginx-charts](https://github.com/kubernetes/ingress-nginx/tree/main/charts/ingress-nginx)
- [k8s-ingress-nginx-releases](https://github.com/kubernetes/ingress-nginx/releases)
- [k8s-ingress-nginx-dashboards](https://github.com/kubernetes/ingress-nginx/tree/main/deploy/grafana/dashboards)
