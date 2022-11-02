#### Install metrics-server
```bash
kubectl apply -f "https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml"
```

#### Install Kubernetes Dashboard
```bash
kubectl apply -f "https://raw.githubusercontent.com/kubernetes/dashboard/v2.5.1/aio/deploy/recommended.yaml"
```

#### URLs:
- [metrics-server](https://github.com/kubernetes-sigs/metrics-server/blob/master/README.md)
- [k8s-dashboard](https://github.com/kubernetes/dashboard/tree/master/docs)
