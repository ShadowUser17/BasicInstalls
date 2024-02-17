#### Deploy to cluster:
```bash
helm repo add open-telemetry "https://open-telemetry.github.io/opentelemetry-helm-charts" && helm repo update
```
```bash
helm upgrade --install otlp-operator "open-telemetry/opentelemetry-operator" --version "0.47.0"
```

#### Check updates:
```bash
helm search repo "open-telemetry/opentelemetry-operator"
```

#### Get default values:
```bash
helm show values "open-telemetry/opentelemetry-operator" > default-values.yml
```

#### Get manifests:
```bash
helm template otlp-operator "open-telemetry/opentelemetry-operator" --version "0.47.0" > manifests.yml
```

#### URLs:
- [what-is-opentelemetry](https://opentelemetry.io/docs/what-is-opentelemetry/)
- [opentelemetry-kubernetes](https://opentelemetry.io/docs/kubernetes/)
- [opentelemetry-vendors](https://opentelemetry.io/ecosystem/vendors/)
- [opentelemetry-operator-chart](https://github.com/open-telemetry/opentelemetry-helm-charts/tree/main/charts/opentelemetry-operator)
