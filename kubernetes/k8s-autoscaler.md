#### HPA integrated by default:
```bash
kubectl -n <namespace> autoscale <type/name> --min=<min> --max=<max> --cpu-percent=<cpu>
```

#### Get pods without resource limit:
```bash
kubectl -n <namespace> get pods -o go-template-file=kubernetes/pods-without-limits.tmpl
```

#### URLs:
- [autoscaler](https://github.com/kubernetes/autoscaler/)
- [goldilocks](https://github.com/FairwindsOps/goldilocks/)
- [kube-capacity](https://github.com/robscott/kube-capacity/)
