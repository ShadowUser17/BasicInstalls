#### Delete operator CRDs:
```bash
for I in $(kubectl get crd -o name | grep "example"); do kubectl delete crd $(basename "$I"); done
```

#### Delete resource finalizers:
```bash
kubectl -n <namespace> patch <type> <name> -p '{"metadata": {"finalizers": []}}' --type=merge
```
