#### Install to cluster:
```bash
kubectl create namespace monitoring
```
```bash
helm show values "oci://ghcr.io/kube-logging/helm-charts/logging-operator" > default-values.yml
```
```bash
helm upgrade --install --wait -f values.yml -n monitoring logging logging-operator "oci://ghcr.io/kube-logging/helm-charts/logging-operator"
```

#### Export manifests:
```bash
helm template -f values.yml -n monitoring logging logging-operator "oci://ghcr.io/kube-logging/helm-charts/logging-operator"
```

#### URLs:
- [Docs](https://kube-logging.dev/docs/)
- [Charts](https://github.com/kube-logging/logging-operator/tree/master/charts/logging-operator)
