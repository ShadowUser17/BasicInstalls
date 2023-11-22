#### Delete operator CRDs:
```bash
for I in $(kubectl get crd -o name | grep "example"); do kubectl delete crd $(basename "$I"); done
```

#### Delete resource finalizers:
```bash
kubectl -n <namespace> patch <type> <name> -p '{"metadata": {"finalizers": []}}' --type=merge
```

#### Delete failed pods:
```bash
kubectl delete pods -A --field-selector 'status.phase!=Running' --force
```

#### Decode fields of secret:
```bash
kubectl -n <namespace> get secret <name> -o go-template='{{range $k, $v := .data}}{{$k}}{{": "}}{{$v|base64decode}}{{"\n"}}{{end}}'
```
