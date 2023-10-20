#### Get existing storage classes:
```bash
kubectl get storageclasses
```

#### Install NFS provisioner:
```bash
helm repo add nfs-subdir-external-provisioner "https://kubernetes-sigs.github.io/nfs-subdir-external-provisioner" && helm repo update
```
```bash
helm show values "nfs-subdir-external-provisioner/nfs-subdir-external-provisioner" > default-values.yml
```
```bash
kubectl create namespace nfs-subdir-provisioner
```
```bash
helm install nfs-subdir-provisioner "nfs-subdir-external-provisioner/nfs-subdir-external-provisioner" -n nfs-subdir-provisioner \
--set 'nfs.path=/var/nfs' \
--set 'nfs.server=192.168.56.10' \
--set 'storageClass.name=nfs-client' \
--set 'storageClass.archiveOnDelete=false'
```

#### Uninstall NFS provisioner:
```bash
helm uninstall nfs-subdir-provisioner -n nfs-subdir-provisioner
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
- [Docs](https://github.com/kubernetes-sigs/nfs-subdir-external-provisioner/blob/master/README.md)
- [Charts](https://github.com/kubernetes-sigs/nfs-subdir-external-provisioner/blob/master/charts/nfs-subdir-external-provisioner/README.md)
- [Releases](https://github.com/kubernetes-sigs/nfs-subdir-external-provisioner/releases)