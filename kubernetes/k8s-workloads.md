#### Update deployment image:
```bash
kubectl -n <namespae> set image <type/name> <container=image>
```

#### Update resource limits:
```bash
kubectl -n <namespae> set resources <type/name> [-c=<container>] --requests="cpu=100m,memory=256Mi" --limits="cpu=100m,memory=512Mi"
```

#### Update replicas count:
```bash
kubectl -n <namespae> scale <type/name> --replicas=<count>
```

#### Redeploy deployment:
```bash
kubectl -n <namespae> rollout restart <type/name>
```

#### Get deployment history:
```bash
kubectl -n <namespae> rollout history <type/name>
```

#### Rollback to previous state:
```bash
kubectl -n <namespae> rollout undo <type/name> [--to-revision=<number>]
```

#### Show rollback status:
```bash
kubectl -n <namespae> rollout status <type/name>
```
