#### Install:
```bash
curl -L "https://github.com/istio/istio/releases/download/1.16.2/istio-1.16.2-linux-amd64.tar.gz" -o istio-linux-amd64.tar.gz && \
tar -xzf istio-linux-amd64.tar.gz && rm -f istio-linux-amd64.tar.gz && \
./istio-1.16.1/bin/istioctl install --verify --set profile=minimal -y
```

#### Uninstall:
```bash
istioctl uninstall --set profile=minimal --purge -y
```

#### Deploy injection:
```bash
istioctl kube-inject -f ./deploy.yml | kubectl apply -f -
```

#### Namespace injection:
```bash
kubectl label namespace default istio-injection=enabled --overwrite
```

#### Configure Nginx Ingress:
```yaml
annotations:
  sidecar.istio.io/inject: "true"
  traffic.sidecar.istio.io/includeInboundPorts: ""
  traffic.sidecar.istio.io/excludeInboundPorts: "80,443"
```
