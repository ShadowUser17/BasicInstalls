#### Deploy to cluster:
```bash
helm repo add prometheus-community "https://prometheus-community.github.io/helm-charts" && helm repo update
```
```bash
helm install prom-operator "prometheus-community/kube-prometheus-stack" -f k3s-values.yml -n monitoring
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
