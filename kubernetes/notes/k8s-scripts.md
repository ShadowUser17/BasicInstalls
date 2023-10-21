#### Delete operator CRDs:
```bash
for I in $(kubectl get crd -o name | grep "example"); do kubectl delete crd $(basename "$I"); done
```
