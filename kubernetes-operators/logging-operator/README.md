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

#### Get API resources:
```bash
kubectl api-resources | grep banzaicloud
```

#### Get logging configuration:
```bash
kubectl get logging logging-operator -o yaml
```
```bash
kubectl get fluentbitagents logging-operator -o yaml
```
```bash
kubectl -n monitoring get secret logging-operator-fluentd-app -o jsonpath="{.data['fluentd\.conf']}" | base64 -d
```
```bash
kubectl -n monitoring get secret logging-operator-fluentbit -o jsonpath="{.data['fluent-bit\.conf']}" | base64 -d
```

#### URLs:
- [Docs](https://kube-logging.dev/docs/)
- [Charts](https://github.com/kube-logging/logging-operator/tree/master/charts/logging-operator)
