#### Before cluster install:
- Add `--disable local-storage` to installation script.
- Install `open-iscsi` on the worker nodes.

#### Install to cluster:
```bash
helm repo add longhorn "https://charts.longhorn.io" && helm repo update
```
```bash
helm show values "longhorn/longhorn" --version "1.4.4" > default-values.yml
```
```bash
helm upgrade --install longhorn "longhorn/longhorn" -f values.yml -n longhorn-system --create-namespace --version "1.4.4"
```

#### Create ingress:
```bash
kubectl apply -f "https://raw.githubusercontent.com/ShadowUser17/BasicInstalls/master/kubernetes-operators/longhorn/frontend-ingress.yml"
```

#### Enable monitoring:
```bash
kubectl apply -f "https://raw.githubusercontent.com/ShadowUser17/BasicInstalls/master/kubernetes-operators/longhorn/prom-operator.yml"
```

#### Get API resources:
```bash
kubectl api-resources | grep longhorn
```

#### Get available charts:
```bash
helm search repo longhorn
```

#### Get manifests:
```bash
helm template longhorn "longhorn/longhorn" -f values.yml -n longhorn-system --version "1.4.4" > manifests.yml
```

#### URLs:
- [Docs](https://longhorn.io/docs/1.4.4/)
- [Charts](https://github.com/longhorn/charts)
- [Releases](https://github.com/longhorn/longhorn/releases)
- [Dashboard](https://grafana.com/grafana/dashboards/17626-longhorn-example-v1-4-0/)
