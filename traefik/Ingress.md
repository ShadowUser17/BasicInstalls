#### Get resource definitions:
```bash
curl -LO "https://raw.githubusercontent.com/traefik/traefik/v2.10/docs/content/reference/dynamic-configuration/kubernetes-crd-definition-v1.yml"
```

#### Get manifest:
```bash
helm repo add traefik "https://traefik.github.io/charts"
```
```bash
helm template traefik traefik/traefik -n kube-system > traefik-ingress-deploy.yaml
```
