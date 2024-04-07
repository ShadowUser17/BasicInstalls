#### URLs:
- [Docs](https://argo-cd.readthedocs.io/en/stable/)
- [Chart](https://github.com/argoproj/argo-helm/tree/main/charts/argo-cd)
- [Metrics](https://argo-cd.readthedocs.io/en/stable/operator-manual/metrics/)
- [Dashboard](https://github.com/argoproj/argo-cd/blob/master/examples/dashboard.json)

#### Get initial secret:
```bash
kubectl -n argocd get secret argocd-initial-admin-secret -o go-template='{{.data.password | base64decode}}'
```
