#### Install to cluster:
```bash
helm repo add aqua "https://aquasecurity.github.io/helm-charts" && helm repo update
```
```bash
helm upgrade --install trivy-operator "aqua/trivy-operator" -f values.yml -n trivy-system --version "0.20.4" --create-namespace
```

#### Check updates:
```bash
helm search repo "aqua/trivy-operator"
```

#### Get default values:
```bash
helm show values "aqua/trivy-operator" > default-values.yml
```

#### Get manifests:
```bash
helm template trivy-operator "aqua/trivy-operator" -f values.yml -n trivy-system --version "0.20.4" > manifests.yml
```

#### Show reports:
```bash
kubectl get vulnerabilityreports -o wide -A
```
```bash
kubectl get configauditreports -o wide -A
```

#### URLs:
- [Documentation](https://aquasecurity.github.io/trivy-operator/latest/docs/vulnerability-scanning/)
- [Releases](https://github.com/aquasecurity/trivy-operator/releases)
- [Metrics](https://aquasecurity.github.io/trivy-operator/latest/tutorials/integrations/metrics/)
- [Dashboard](https://grafana.com/grafana/dashboards/17813-trivy-operator-dashboard/)
