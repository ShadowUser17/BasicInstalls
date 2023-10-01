#### Deploy to cluster:
```bash
kubectl create namespace monitoring
```
```bash
helm repo add prometheus-community "https://prometheus-community.github.io/helm-charts" && helm repo update
```
```bash
helm install prom-operator "prometheus-community/kube-prometheus-stack" -f k3s-values.yml -n monitoring
```

#### Update existing deployment:
```bash
helm upgrade --install prom-operator "prometheus-community/kube-prometheus-stack" -f k3s-values.yml -n monitoring
```

#### Get Grafana credentials:
```bash
kubectl -n monitoring get secret prom-operator-grafana -o jsonpath='{.data.admin-user}' | base64 -d
```
```bash
kubectl -n monitoring get secret prom-operator-grafana -o jsonpath='{.data.admin-password}' | base64 -d
```

#### Get operator selectors:
```bash
kubectl -n monitoring get prometheus prom-operator-kube-prometh-prometheus -o jsonpath='{.spec.podMonitorSelector}'
```
```bash
kubectl -n monitoring get prometheus prom-operator-kube-prometh-prometheus -o jsonpath='{.spec.probeSelector}'
```
```bash
kubectl -n monitoring get prometheus prom-operator-kube-prometh-prometheus -o jsonpath='{.spec.ruleSelector}'
```
```bash
kubectl -n monitoring get prometheus prom-operator-kube-prometh-prometheus -o jsonpath='{.spec.scrapeConfigSelector}'
```
```bash
kubectl -n monitoring get prometheus prom-operator-kube-prometh-prometheus -o jsonpath='{.spec.serviceMonitorSelector}'
```
```bash
kubectl -n monitoring get alertmanager prom-operator-kube-prometh-alertmanager -o jsonpath='{.spec.alertmanagerConfigSelector}'
```

#### Get default manifests:
```bash
helm template prom-operator "prometheus-community/kube-prometheus-stack" > manifests.yml
```

#### Get default values:
```bash
helm show values "prometheus-community/kube-prometheus-stack" > values.yml
```

#### URLs:
- [Docs](https://prometheus-operator.dev/docs/prologue/introduction/)
- [Charts](https://github.com/prometheus-community/helm-charts/tree/main/charts/kube-prometheus-stack)
- [Releases](https://github.com/prometheus-operator/prometheus-operator/releases)