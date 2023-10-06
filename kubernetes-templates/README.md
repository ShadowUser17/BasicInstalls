#### URLs:
- [Template](https://pkg.go.dev/text/template)

#### go-template-file:
```bash
kubectl -n <namespace> get pods -o go-template-file='<template_file>.tmpl'
```

#### jsonpath:
```bash
kubectl -n <namespace> get pods -o jsonpath='{range .items[*]}{.spec.containers[*].image}{"\n"}{end}'
```
