#### Install to cluster:
```bash
helm repo add aqua "https://aquasecurity.github.io/helm-charts" && helm repo update
```
```bash
helm show values "aqua/tracee" > default-values.yml
```
```bash
helm upgrade --install tracee "aqua/tracee" -f values.yml -n tracee-system --create-namespace
```

#### Get available charts:
```bash
helm search repo aqua
```

#### Export manifests:
```bash
helm template tracee "aqua/tracee" -f values.yml -n tracee-system > manifests.yml
```

#### Show logs:
```bash
kubectl logs -f daemonset/tracee -n tracee-system
```

#### URLs:
- [Documentation](https://aquasecurity.github.io/tracee/latest/docs/overview/)
- [Dashboard](https://aquasecurity.github.io/tracee/latest/tutorials/deploy-grafana-dashboard/)
- [Releases](https://github.com/aquasecurity/tracee/releases)
