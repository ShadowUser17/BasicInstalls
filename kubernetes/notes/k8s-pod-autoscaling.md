#### HPA integrated by default:
```bash
kubectl -n <namespace> autoscale <type/name> --min=<min> --max=<max> --cpu-percent=<cpu>
```

#### HPA example manifest:
```yaml
apiVersion: "autoscaling/v2"
kind: "HorizontalPodAutoscaler"
metadata:
  name: "testing-app"
spec:
  scaleTargetRef:
    apiVersion: "apps/v1"
    kind: "Deployment"
    name: "testing-app"
  minReplicas: 1
  maxReplicas: 5
  metrics:
    - type: "Pods"
      pods:
        metric:
          name: "network_receive_packets_total"
        target:
          type: "AverageValue"
          averageValue: "10"
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
- [horizontal-pod-autoscale](https://kubernetes.io/docs/tasks/run-application/horizontal-pod-autoscale/)
- [autoscalers](https://github.com/kubernetes/autoscaler/blob/master/README.md)
- [metrics-server](https://github.com/kubernetes-sigs/metrics-server/blob/master/README.md)
