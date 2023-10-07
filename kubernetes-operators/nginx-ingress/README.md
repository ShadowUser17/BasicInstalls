#### Before cluster install:
Add `--disable traefik` to installation script.

#### Install ingress to cluster:
```bash
helm repo add ingress-nginx "https://kubernetes.github.io/ingress-nginx" && helm repo update
```
```bash
helm show values "ingress-nginx/ingress-nginx" > default-values.yml
```
```bash
helm upgrade --install ingress-nginx "ingress-nginx/ingress-nginx" -f values.yml -n ingress-nginx --create-namespace
```

#### Get default manifests:
```bash
helm template ingress-nginx "ingress-nginx/ingress-nginx" -f values.yml -n ingress-nginx > manifests.yml
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

#### URLs:
- [k3s-networking-docs](https://docs.k3s.io/networking)
- [k8s-ingress-concepts](https://kubernetes.io/docs/concepts/services-networking/ingress/)
- [k8s-ingress-nginx-docs](https://kubernetes.github.io/ingress-nginx/)
- [k8s-ingress-nginx-charts](https://github.com/kubernetes/ingress-nginx/tree/main/charts/ingress-nginx)
- [k8s-ingress-nginx-releases](https://github.com/kubernetes/ingress-nginx/releases)
- [k8s-ingress-nginx-dashboards](https://github.com/kubernetes/ingress-nginx/tree/main/deploy/grafana/dashboards)
