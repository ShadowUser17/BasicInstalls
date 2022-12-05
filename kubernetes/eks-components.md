#### Install Metrics Server
```bash
kubectl apply -f "https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml"
```

#### Install K8s Dashboard for v1.24
```bash
kubectl apply -f "https://raw.githubusercontent.com/kubernetes/dashboard/v2.6.1/aio/deploy/recommended.yaml"
```

#### Install K8s Dashboard for v1.23
```bash
kubectl apply -f "https://raw.githubusercontent.com/kubernetes/dashboard/v2.5.1/aio/deploy/recommended.yaml"
```

#### URLs:
- [k8s-dashboard](https://github.com/kubernetes/dashboard/tree/master/docs)
- [metrics-server](https://github.com/kubernetes-sigs/metrics-server/blob/master/README.md)
- [aws-efs-csi-driver](https://github.com/kubernetes-sigs/aws-efs-csi-driver/blob/master/docs/README.md)
- [aws-ebs-csi-driver](https://github.com/kubernetes-sigs/aws-ebs-csi-driver/blob/master/README.md)
