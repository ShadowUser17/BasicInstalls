#### Install to cluster:
```bash
helm repo add elastic "https://helm.elastic.co" && helm repo update
```
```bash
helm upgrade --install elastic-operator "elastic/eck-operator" -n elastic-system --version "2.10.0" --create-namespace
```

#### Check updates:
```bash
helm search repo "elastic/eck-operator"
```

#### Get default values:
```bash
helm show values "elastic/eck-operator" > default-values.yml
```

#### Get manifests:
```bash
helm template elastic-operator "elastic/eck-operator" -n elastic-system --version "2.10.0" > manifests.yml
```

#### Get API resources:
```bash
kubectl api-resources | grep elastic
```

#### URLs:
- [quickstart](https://www.elastic.co/guide/en/cloud-on-k8s/current/k8s-quickstart.html)
- [upgrading](https://www.elastic.co/guide/en/cloud-on-k8s/current/k8s-upgrading-eck.html)
- [config](https://www.elastic.co/guide/en/cloud-on-k8s/current/k8s-operator-config.html)
- [api](https://www.elastic.co/guide/en/cloud-on-k8s/current/k8s-api-reference.html)
