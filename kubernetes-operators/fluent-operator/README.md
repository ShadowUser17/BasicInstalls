#### Install to cluster:
```bash
helm repo add fluent "https://fluent.github.io/helm-charts" && helm repo update
```
```bash
kubectl create namespace monitoring
```
```bash
helm show values "fluent/fluent-operator" > fluent-operator-default-values.yml
```
```bash
helm upgrade --install fluent-operator "fluent/fluent-operator" -f fluent-operator-values.yml -n monitoring
```

#### Enable monitoring:
```bash
kubectl apply -f fluent-bit-monitoring.yml
```

#### Get available sharts:
```bash
helm search repo fluent
```

#### Get manifests:
```bash
helm template fluent-operator "fluent/fluent-operator" -f fluent-operator-values.yml -n monitoring > manifests.yml
```

#### Get API resources:
```bash
kubectl api-resources | grep fluent
```

#### Get configuration:
```bash
kubectl get cfbc -o yaml
```
```bash
kubectl get cfdc -o yaml
```

#### URLs:
- [fluent-operator](https://github.com/fluent/fluent-operator/blob/master/README.md)
- [fluent-bit-docs](https://docs.fluentbit.io/manual)
- [fluent-charts](https://github.com/fluent/helm-charts/tree/main/charts)
- [monitoring](https://docs.fluentbit.io/manual/administration/monitoring)
- [dashboard](https://grafana.com/grafana/dashboards/7752-logging-dashboard/)
