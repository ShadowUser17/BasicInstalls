#### Install to cluster:
```bash
helm repo add aqua "https://aquasecurity.github.io/helm-charts" && helm repo update
```
```bash
helm show values "aqua/trivy-operator" > values.yml
```
```bash
helm upgrade --install trivy-operator "aqua/trivy-operator" -f trivy-operator-values.yml -n trivy-system --create-namespace
```

#### Export manifests:
```bash
helm template trivy-operator "aqua/trivy-operator" -n trivy-system --create-namespace > manifests.yml
```

#### Enable metrics:
```bash
kubectl edit deploy/trivy-operator -n trivy-system
```
```yaml
template:
  metadata:
    annotations:
      prometheus.io/scrape: "true"
      prometheus.io/port: "8080"
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
