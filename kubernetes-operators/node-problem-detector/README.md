#### Install to cluster:
```bash
kubectl create namespace monitoring
```
```bash
helm repo add deliveryhero "https://charts.deliveryhero.io/" && helm repo update
```
```bash
helm show values "deliveryhero/node-problem-detector" > default-values.yml
```
```bash
helm upgrade --install node-monitor "deliveryhero/node-problem-detector" -f values.yml -n monitoring
```

#### Export manifests:
```bash
helm template node-monitor "deliveryhero/node-problem-detector" -f values.yml -n monitoring > manifests.yml
```

#### Get available charts:
```bash
helm search repo deliveryhero
```

#### URLs:
- [Docs](https://github.com/kubernetes/node-problem-detector/blob/master/README.md)
- [Charts](https://github.com/deliveryhero/helm-charts/tree/master/stable/node-problem-detector)
