#### Add aws-gp3-ebs storage class:
```yaml
apiVersion: "storage.k8s.io/v1"
kind: "StorageClass"
metadata:
  name: "gp3"
  annotations:
    storageclass.kubernetes.io/is-default-class: "true"
parameters:
  type: "gp3"
  fsType: "ext4"
provisioner: "ebs.csi.aws.com"
reclaimPolicy: "Delete"
volumeBindingMode: "WaitForFirstConsumer"
allowVolumeExpansion: true
```

#### Resize existing volume:
- Required option `allowVolumeExpansion` is `true`
```bash
kubectl -n <namespace> patch pvc <name> -p '{"spec": {"resources": {"requests": {"storage": "<size>"}}}}'
```
