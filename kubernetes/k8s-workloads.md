#### Update deployment image:
```bash
kubectl -n <namespae> set image <type/name> <container=image>
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
