#### Get resource definitions:
```bash
curl -LO "https://raw.githubusercontent.com/traefik/traefik/v2.10/docs/content/reference/dynamic-configuration/kubernetes-crd-definition-v1.yml"
```

#### Get manifest:
```bash
helm repo add traefik "https://traefik.github.io/charts" && helm repo update
```
```bash
helm show values "traefik/traefik" > values.yml
```
```bash
helm upgrade --install traefik "traefik/traefik"
```

#### Get default manifests:
```bash
helm template traefik "traefik/traefik" -n kube-system > manifests.yml
```

#### URLs:
- [Docs](https://doc.traefik.io/traefik/)
- [Charts](https://github.com/traefik/traefik-helm-chart)
