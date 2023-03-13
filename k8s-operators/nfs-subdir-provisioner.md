#### Get existing storage classes:
```bash
kubectl get storageclasses
```

#### Install NFS provisioner:
```bash
helm repo add nfs-subdir-external-provisioner "https://kubernetes-sigs.github.io/nfs-subdir-external-provisioner"
```
```bash
helm install nfs-subdir-external-provisioner nfs-subdir-external-provisioner/nfs-subdir-external-provisioner \
--set 'nfs.server=192.168.56.10' \
--set 'nfs.path=/var/nfs' \
--set 'storageClass.name=nfs-client' \
--set 'storageClass.provisionerName=k8s-sigs.io/nfs-subdir-external-provisioner'
```

#### Uninstall NFS provisioner:
```bash
helm uninstall nfs-subdir-external-provisioner
```

#### Deploying persistent volume claim:
```yaml
apiVersion: "v1"
kind: "PersistentVolumeClaim"
metadata:
  name: "testing-data"
  namespace: "default"
spec:
  accessModes: ["ReadWriteOnce"]
  storageClassName: "nfs-client"
  resources:
    requests:
      storage: "1G"
```

#### URLs:
- [README](https://github.com/kubernetes-sigs/nfs-subdir-external-provisioner/blob/master/README.md)
- [Releases](https://github.com/kubernetes-sigs/nfs-subdir-external-provisioner/releases)
