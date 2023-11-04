#### Install to cluster:
```bash
kubectl create namespace testing
```
```bash
helm show values "oci://ghcr.io/kube-logging/helm-charts/log-generator" > log-generator-default-values.yml
```
```bash
helm upgrade --install log-generator "oci://ghcr.io/kube-logging/helm-charts/log-generator" -n testing
```
```bash
kubectl apply -f test-output.yml
```

#### URLs:
- [Charts](https://github.com/kube-logging/log-generator/tree/master/charts/log-generator)
