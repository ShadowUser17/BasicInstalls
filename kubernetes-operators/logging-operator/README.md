#### Install to cluster:
```bash
kubectl create namespace monitoring
```
```bash
helm show values "oci://ghcr.io/kube-logging/helm-charts/logging-operator" > default-values.yml
```
```bash
helm upgrade --install logging-operator "oci://ghcr.io/kube-logging/helm-charts/logging-operator" -f values.yml -n monitoring
```

#### Export manifests:
```bash
helm template logging-operator "oci://ghcr.io/kube-logging/helm-charts/logging-operator" -f values.yml -n monitoring > manifests.yml
```

#### URLs:
- [Docs](https://kube-logging.dev/docs/)
- [Charts](https://github.com/kube-logging/logging-operator/tree/master/charts/logging-operator)
