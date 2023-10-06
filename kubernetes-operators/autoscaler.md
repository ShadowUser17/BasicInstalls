#### HPA integrated by default:
```bash
kubectl -n <namespace> autoscale <type/name> --min=<min> --max=<max> --cpu-percent=<cpu>
```

#### Get VPA recomendations:
```bash
kubectl -n <namespace> get vpa -o go-template-file=kubernetes-templates/vpa-recomendations.tmpl
```

#### Get pods without resource limit:
```bash
kubectl -n <namespace> get pods -o go-template-file=kubernetes-templates/pods-without-limits.tmpl
```

#### Get nodes capacity:
```bash
kubectl -n <namespace> get pods -o go-template-file=kubernetes-templates/nodes-capacity.tmpl
```

#### Set Prometheus storage for vpa-recommender:
```yaml
spec:
  containers:
    - name: "recommender"
      args:
        - "--storage=prometheus"
        - "--prometheus-address=http://prometheus.testing.svc:9090"
```

#### URLs:
- [autoscaler](https://github.com/kubernetes/autoscaler)
- [kube-state-metrics](https://github.com/kubernetes/kube-state-metrics)
