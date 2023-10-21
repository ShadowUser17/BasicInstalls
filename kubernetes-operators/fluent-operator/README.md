#### Add helm repo:
```bash
helm repo add fluent "https://fluent.github.io/helm-charts" && helm repo update
```

#### Deploy fluent-operator:
```bash
kubectl create namespace monitoring
```
```bash
helm show values "fluent/fluent-operator" > fluent-operator-default-values.yml
```
```bash
helm upgrade --install fluent-operator "fluent/fluent-operator" -f fluent-operator-values.yml -n monitoring
```

#### Deploy fluent-bit:
```bash
kubectl create namespace monitoring
```
```bash
helm show values "fluent/fluent-bit" > fluent-bit-default-values.yml
```
```bash
helm upgrade --install fluent-bit "fluent/fluent-bit" -f fluent-bit-values.yml -n monitoring
```

#### Export manifests:
```bash
helm template fluent-operator "fluent/fluent-operator" -n fluent > fluent-operator-manifests.yml
```
```bash
helm template fluent-bit "fluent/fluent-bit" -n monitoring > fluent-bit-manifests.yml
```

#### fluent-operator:
- [Docs](https://github.com/fluent/fluent-operator/blob/master/README.md)
- [Charts](https://github.com/fluent/helm-charts/tree/main/charts/fluent-operator)

#### fluent-bit:
- [Docs](https://docs.fluentbit.io/manual)
- [Images](https://hub.docker.com/r/fluent/fluent-bit/tags)
- [Charts](https://github.com/fluent/helm-charts/tree/main/charts/fluent-bit)

#### logging-operator:
- [Docs](https://kube-logging.dev/docs/)
- [Charts](https://github.com/kube-logging/logging-operator/tree/master/charts/logging-operator)
