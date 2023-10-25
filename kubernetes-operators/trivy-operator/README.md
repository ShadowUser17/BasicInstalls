#### Install to cluster:
```bash
helm repo add aqua "https://aquasecurity.github.io/helm-charts" && helm repo update
```
```bash
helm show values "aqua/trivy-operator" > default-values.yml
```
```bash
helm upgrade --install trivy-operator "aqua/trivy-operator" -f values.yml -n trivy-system --create-namespace
```

#### Get available sharts:
```bash
helm search repo aqua
```

#### Get manifests:
```bash
helm template trivy-operator "aqua/trivy-operator" -f values.yml -n trivy-system > manifests.yml
```

#### Show reports:
```bash
kubectl get vulnerabilityreports -o wide -A
```
```bash
kubectl get configauditreports -o wide -A
```

#### URLs:
- [Documentation](https://aquasecurity.github.io/trivy-operator/latest)
- [Releases](https://github.com/aquasecurity/trivy-operator/releases)
- [Dashboard](https://grafana.com/grafana/dashboards/16337-trivy-operator-vulnerabilities/)
