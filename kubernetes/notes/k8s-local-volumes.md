### Warning! Local volumes do not support dynamic provisioning!

#### Create storage class:
```yaml
apiVersion: "storage.k8s.io/v1"
kind: "StorageClass"
metadata:
  name: "host-path"
provisioner: "kubernetes.io/no-provisioner"
volumeBindingMode: "WaitForFirstConsumer"
allowVolumeExpansion: true
reclaimPolicy: "Delete"
```

#### Create persistent volume:
```yaml
apiVersion: "v1"
kind: "PersistentVolume"
metadata:
  name: "nfs-data-0"
spec:
  storageClassName: "host-path"
  accessModes: ["ReadWriteOnce"]
  capacity:
    storage: "1Gi"
  hostPath:
    path: "/var/lib/nfs/data-0"
```
