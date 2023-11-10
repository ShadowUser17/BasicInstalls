#### Install to cluster:
```bash
helm repo add longhorn "https://charts.longhorn.io" && helm repo update
```
```bash
helm show values "longhorn/longhorn" > longhorn-default-values.yml
```
```bash
helm upgrade --install longhorn "longhorn/longhorn" -f values.yml -n longhorn-system --create-namespace
```

#### Get available charts:
```bash
helm search repo longhorn
```

#### Get manifests:
```bash
helm template longhorn "longhorn/longhorn" -f values.yml -n longhorn-system > longhorn-manifests.yml
```

#### URLs:
- [Docs](https://longhorn.io/docs/latest/)
- [Charts](https://github.com/longhorn/charts)
- [Releases](https://github.com/longhorn/longhorn/releases)
