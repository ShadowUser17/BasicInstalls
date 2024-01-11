#### Install to cluster:
```bash
helm repo add bitnami "https://charts.bitnami.com/bitnami" && helm repo update
```
```bash
kubectl create namespace testing
```
```bash
helm upgrade --install cache "bitnami/redis" -f ./values/redis.yml -n testing --version "18.6.3"
```

#### Check updates:
```bash
helm search repo "bitnami/redis"
```

#### Get default values:
```bash
helm show values "bitnami/redis" > default-values.yml
```

#### Export manifests:
```bash
helm template cache "bitnami/redis" -f ./values/redis.yml -n testing --version "18.6.3" > manifests.yml
```

#### URLs:
- [Docs](https://redis.io/docs/)
- [Chart](https://github.com/bitnami/charts/tree/main/bitnami/redis)
- [Images](https://hub.docker.com/r/bitnami/redis/tags)
- [Releases](https://github.com/redis/redis/releases)
