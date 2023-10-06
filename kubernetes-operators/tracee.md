#### Install to cluster:
```bash
helm repo add aqua "https://aquasecurity.github.io/helm-charts" && helm repo update
```
```bash
helm show values "aqua/tracee" > values.yml
```
```bash
helm upgrade --install tracee "aqua/tracee" -n tracee-system --create-namespace
```

#### Export manifests:
```bash
helm template tracee "aqua/tracee" -n tracee-system --create-namespace > manifests.yml
```

#### URLs:
- [Documentation](https://aquasecurity.github.io/tracee/latest)
- [Releases](https://github.com/aquasecurity/tracee/releases)
