#### Install:
```bash
kubectl apply -f "https://raw.githubusercontent.com/aquasecurity/trivy-operator/v0.8.0/deploy/static/trivy-operator.yaml"
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
