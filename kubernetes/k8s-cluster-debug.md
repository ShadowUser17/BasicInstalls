#### Show events:
```bash
kubectl get event -n <namespace> --field-selector 'involvedObject.name=<object_name>'
```

#### Exec command:
```bash
kubectl -n <namespace> exec -it <pod> -c <container> -- <command>
```

#### List pods:
```bash
crictl pods
```

#### List pods resource usage:
```bash
crictl statsp
```

#### List images:
```bash
crictl images
```

#### Remove all unused images:
```bash
crictl rmi --prune
```

#### List containers:
```bash
crictl ps --all
```

#### List containers resource usage:
```bash
crictl stats
```
