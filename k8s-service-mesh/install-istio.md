#### Install:
- The minimal profile provides only `istiod`.
- Use default profile for install `istio-ingressgateway`.
```bash
curl -L "https://github.com/istio/istio/releases/download/1.19.1/istio-1.19.1-linux-amd64.tar.gz" -o istio-linux-amd64.tar.gz && \
tar -xzf istio-linux-amd64.tar.gz && rm -f istio-linux-amd64.tar.gz && \
./istio-1.19.1/bin/istioctl install --verify --set profile=minimal -y
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

#### Dashboards:
- [istio-wasm-extension](https://grafana.com/grafana/dashboards/13277-istio-wasm-extension-dashboard/)
- [istio-control-plane](https://grafana.com/grafana/dashboards/7645-istio-control-plane-dashboard/)
- [istio-workload](https://grafana.com/grafana/dashboards/7630-istio-workload-dashboard/)
- [istio-service](https://grafana.com/grafana/dashboards/7636-istio-service-dashboard/)
- [istio-mesh](https://grafana.com/grafana/dashboards/7639-istio-mesh-dashboard/)
