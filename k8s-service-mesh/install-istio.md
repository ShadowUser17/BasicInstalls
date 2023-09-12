#### Install:
- The minimal profile provides only `istiod`.
- Use default profile for install `istio-ingressgateway`.
```bash
curl -L "https://github.com/istio/istio/releases/download/1.19.0/istio-1.19.0-linux-amd64.tar.gz" -o istio-linux-amd64.tar.gz && \
tar -xzf istio-linux-amd64.tar.gz && rm -f istio-linux-amd64.tar.gz && \
./istio-1.19.0/bin/istioctl install --verify --set profile=minimal -y
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

#### Create IngressClass:
```bash
kubectl apply -f "https://raw.githubusercontent.com/ShadowUser17/BasicInstalls/master/k8s-service-mesh/istio-ingress-class.yml"
```

#### Create Issuer:
- Warning! The `secret` for `ingress` must be in the `istio-system` namespace!
```bash
kubectl apply -f "https://raw.githubusercontent.com/ShadowUser17/BasicInstalls/master/k8s-service-mesh/istio-ingress-issuer.yml"
```
