#### Install to cluster:
```bash
helm repo add elastic "https://helm.elastic.co" && helm repo update
```
```bash
helm show values "elastic/eck-operator" > default-values.yml
```
```bash
helm upgrade --install elastic-operator "elastic/eck-operator" -n elastic-system --create-namespace
```

#### Get available charts:
```bash
helm search repo elastic
```

#### Get manifests:
```bash
helm template elastic-operator "elastic/eck-operator" -n elastic-system > manifests.yml
```

#### Get API resources:
```bash
kubectl api-resources | grep elastic
```

#### URLs:
- [k8s-quickstart](https://www.elastic.co/guide/en/cloud-on-k8s/current/k8s-quickstart.html)
- [k8s-upgrading](https://www.elastic.co/guide/en/cloud-on-k8s/current/k8s-upgrading-eck.html)
- [k8s-config](https://www.elastic.co/guide/en/cloud-on-k8s/current/k8s-operator-config.html)
- [k8s-api](https://www.elastic.co/guide/en/cloud-on-k8s/current/k8s-api-reference.html)
