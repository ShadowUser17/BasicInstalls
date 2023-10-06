#### Install Loki:
```bash
kubectl create namespace monitoring
```
```bash
helm repo add grafana "https://grafana.github.io/helm-charts" && helm repo update
```
```bash
helm show values "grafana/loki" > loki-default-values.yml
```
```bash
helm upgrade --install loki "grafana/loki" -f loki-values.yml -n monitoring
```

#### Install Promtail:
```bash
helm show values "grafana/promtail" > promtail-default-values.yml
```
```bash
helm upgrade --install promtail "grafana/promtail" -f promtail-values.yaml -n monitoring
```

#### Export manifests:
```bash
helm template loki "grafana/loki" -n monitoring > loki-manifests.yml
```
```bash
helm template promtail "grafana/promtail" -n monitoring > promtail-manifests.yml
```
