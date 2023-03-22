#### Install CLI and check cluster:
```bash
curl -L "https://github.com/linkerd/linkerd2/releases/download/stable-2.12.4/linkerd2-cli-stable-2.12.4-linux-amd64" -o linkerd && \
chmod 755 ./linkerd && mv ./linkerd /usr/local/bin/ && linkerd check --pre
```

#### Install to cluster:
```bash
linkerd install --crds | kubectl apply -f - && \
linkerd install | kubectl apply -f - && \
sleep 1m && linkerd check
```

#### Install Linkerd the Promethues:
```bash
linkerd viz install | kubectl apply -f -
```

#### Install Flagger to Linkerd namespace:
```bash
kubectl apply -k "github.com/fluxcd/flagger/kustomize/linkerd"
```

#### Inject deployments:
```bash
kubectl get deploy -n <app-ns> -o yaml | linkerd inject - | kubectl apply -f -
```

#### Check deployments:
```bash
linkerd -n <app-ns> check --proxy
```

#### Uninstall:
```bash
linkerd viz uninstall | kubectl delete -f -
```
```bash
linkerd uninstall | kubectl delete -f -
```