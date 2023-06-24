#### Check action possibility:
```bash
kubectl auth can-i <command> [--as <user_name>]
```

#### List credentials:
```bash
kubectl config get-contexts
```

#### Switch credentials:
```bash
kubectl config use-context <context>
```

#### Show kubeconfig:
```bash
kubectl config view
```
