#### ServiceMonitor example:
- Check `serviceMonitorSelector` labels!
```yaml
apiVersion: "monitoring.coreos.com/v1"
kind: "ServiceMonitor"
metadata:
  name: "testing-app"
  namespace: "testing"
  labels:
    release: "prom-operator"
spec:
  selector:
    matchLabels:
      app.kubernetes.io/name: "testing-app"
  endpoints:
    - port: "metrics"
      honorLabels: true
      scrapeTimeout: "30s"
```

#### PodMonitor example:
- Check `podMonitorSelector` labels!
```yaml
apiVersion: "monitoring.coreos.com/v1"
kind: "PodMonitor"
metadata:
  name: "testing-app"
  namespace: "testing"
  labels:
    release: "prom-operator"
spec:
  selector:
    matchLabels:
      app.kubernetes.io/name: "testing-app"
  podMetricsEndpoints:
    - port: "metrics"
      honorLabels: true
      scrapeTimeout: "30s"
```

#### AlertmanagerConfig example:
- Check `alertmanagerConfigSelector` labels!
```yaml
apiVersion: "monitoring.coreos.com/v1alpha1"
kind: "AlertmanagerConfig"
metadata:
  name: "echo-server"
  namespace: "testing"
  labels:
    release: "prom-operator"
spec:
  route:
    groupBy: ["alertname", "severity"]
    groupWait: "30s"
    groupInterval: "5m"
    repeatInterval: "1h"
    receiver: "echo-server"
  receivers:
    - name: "echo-server"
      webhookConfigs:
        - url: "http://echo-server.testing.svc:8080/"
          sendResolved: true
```

#### Create Grafana dashboard:
- Check the selector in Grafana `sidecar` params!
```yaml
labels:
  grafana_dashboard: "1"
```
```bash
kubectl create configmap <name> -n monitoring --from-file=dashboard.json
```
```bash
kubectl label configmap <name> -n monitoring grafana_dashboard="1"
```

#### Create Grafana datasource:
- Check the selector in Grafana `sidecar` params!
```yaml
labels:
  grafana_datasource: "1"
```
```bash
kubectl create configmap <name> -n monitoring --from-file=datasource.json
```
```bash
kubectl label configmap <name> -n monitoring grafana_datasource="1"
```
