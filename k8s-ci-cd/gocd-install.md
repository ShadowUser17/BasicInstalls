#### Install:
```bash
helm repo add gocd "https://gocd.github.io/helm-chart" && helm repo update
```
```bash
helm install gocd gocd/gocd -n gocd --create-namespace
```

#### Fix for default ingress:
```bash
kubectl edit ingress gocd-server -n gocd
```
```yaml
spec:
  ingressClassName: "nginx"
```

#### Delete:
```bash
helm uninstall gocd -n gocd
```
