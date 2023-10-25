#### Install to cluster:
```bash
helm repo add traefik "https://traefik.github.io/charts" && helm repo update
```
```bash
helm show values "traefik/traefik" > default-values.yml
```
```bash
helm upgrade --install traefik "traefik/traefik" -n kube-system
```

#### Get available sharts:
```bash
helm search repo traefik
```

#### Get manifests:
```bash
helm template traefik "traefik/traefik" -n kube-system > manifests.yml
```

#### URLs:
- [Docs](https://doc.traefik.io/traefik/)
- [Charts](https://github.com/traefik/traefik-helm-chart)
