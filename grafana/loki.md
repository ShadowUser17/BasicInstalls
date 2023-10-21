#### Add helm repo:
```bash
helm repo add grafana "https://grafana.github.io/helm-charts" && helm repo update
```

#### Install Loki:
```bash
kubectl create namespace monitoring
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

#### Enable log collection:
```yaml
template:
  metadata:
    annotations:
      promtail.io/collect: "true"
```

#### loki:
- [Docs](https://grafana.com/docs/loki/latest/)
- [Releases](https://github.com/grafana/loki/releases)
- [Images](https://hub.docker.com/r/grafana/loki/tags)
- [Charts](https://github.com/grafana/helm-charts)

#### k8s-event-exporter:
- [Docs](https://github.com/resmoio/kubernetes-event-exporter)
- [Images](https://hub.docker.com/r/bitnami/kubernetes-event-exporter/tags)
- [Charts](https://github.com/bitnami/charts/tree/main/bitnami/kubernetes-event-exporter/)

#### fluent-bit-plugin-loki:
- [Docs](https://grafana.com/docs/loki/latest/send-data/fluentbit/)
- [Images](https://hub.docker.com/r/grafana/fluent-bit-plugin-loki/tags)
- [Charts](https://github.com/grafana/helm-charts/tree/main/charts/fluent-bit)