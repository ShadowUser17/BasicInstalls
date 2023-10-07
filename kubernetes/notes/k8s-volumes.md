#### Example for Deployment:
```yaml
apiVersion: "v1"
kind: "PersistentVolumeClaim"
metadata:
  namespace: "testing"
  name: "data"
spec:
  accessModes: ["ReadWriteOnce"]
  storageClassName: "local-path"
  resources:
    requests:
      storage: "2Gi"
```

#### Example for StatefulSet:
Add `volumeClaimTemplates` to the pod template spec.
```yaml
volumeClaimTemplates:
  - metadata:
      name: "data"
    spec:
      accessModes: ["ReadWriteOnce"]
      storageClassName: "local-path"
      resources:
        requests:
          storage: "2Gi"
```

#### URLs:
- [volumes](https://kubernetes.io/docs/concepts/storage/volumes/)
