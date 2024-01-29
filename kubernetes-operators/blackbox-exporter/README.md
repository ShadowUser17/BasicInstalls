#### Deploy to cluster:
```bash
helm repo add prometheus-community "https://prometheus-community.github.io/helm-charts" && helm repo update
```
```bash
helm upgrade --install prober "prometheus-community/prometheus-blackbox-exporter" -f values.yml -n monitoring --version "8.10.1"
```

#### Check updates:
```bash
helm search repo "prometheus-community/prometheus-blackbox-exporter"
```

#### Get default values:
```bash
helm show values "prometheus-community/prometheus-blackbox-exporter" > default-values.yml
```

#### Get manifests:
```bash
helm template prober "prometheus-community/prometheus-blackbox-exporter" -f values.yml -n monitoring --version "8.10.1" > manifests.yml
```

#### Probe example:
```yaml
apiVersion: "monitoring.coreos.com/v1"
kind: "Probe"
metadata:
  name: "probe-testing-k3s"
  namespace: "monitoring"
  labels:
    release: "prom-operator"
spec:
  prober:
    url: "prober-prometheus-blackbox-exporter.monitoring.svc:9115"
  module: "http_2xx"
  interval: "60s"
  targets:
    staticConfig:
      static:
        - "http://testing.k3s/"
        - "https://testing.k3s/"
```

#### URLs:
- [Docs](https://github.com/prometheus/blackbox_exporter/blob/master/README.md)
- [Chart](https://github.com/prometheus-community/helm-charts/tree/main/charts/prometheus-blackbox-exporter)
- [Releases](https://github.com/prometheus/blackbox_exporter/releases)
