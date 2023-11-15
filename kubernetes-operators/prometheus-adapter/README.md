#### Deploy to cluster:
```bash
helm repo add prometheus-community "https://prometheus-community.github.io/helm-charts" && helm repo update
```
```bash
helm show values "prometheus-community/prometheus-adapter" > default-values.yml
```
```bash
helm upgrade --install prom-adapter "prometheus-community/prometheus-adapter" -f values.yml -n monitoring
```

#### Export manifests:
```bash
helm template prom-adapter "prometheus-community/prometheus-adapter" -f values.yml -n monitoring > manifests.yml
```

#### Get available metrics:
```bash
kubectl get --raw "/apis/custom.metrics.k8s.io/v1beta1"
```
```bash
kubectl get --raw "/apis/custom.metrics.k8s.io/v1beta1/namespaces/*/metrics/<metrics>"
```

#### URLs:
- [Docs](https://github.com/kubernetes-sigs/prometheus-adapter/blob/master/README.md)
- [Charts](https://github.com/prometheus-community/helm-charts/tree/main/charts/prometheus-adapter)
- [Releases](https://github.com/kubernetes-sigs/prometheus-adapter/releases)
