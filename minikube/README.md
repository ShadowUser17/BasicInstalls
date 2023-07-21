#### URLs:
- [minikube-docs](https://minikube.sigs.k8s.io/docs/)
- [ingress-minikube](https://kubernetes.io/docs/tasks/access-application-cluster/ingress-minikube/)

#### Fix for Metric Server:
```yaml
    spec:
      containers:
      - args:
        - --cert-dir=/tmp
        - --secure-port=4443
        - --kubelet-preferred-address-types=InternalIP
        - --kubelet-insecure-tls
        - --kubelet-use-node-status-port
        - --metric-resolution=15s
```

#### Enable ingress controller:
```bash
minikube addons enable ingress
```
```bash
minikube addons enable ingress-dns
```

#### Install on macOS:
```bash
brew install hyperkit minikube kubernetes-cli
```
```bash
minikube config set driver hyperkit
```
```bash
minikube config set kubernetes-version v1.25.12
```
```bash
minikube start
```
