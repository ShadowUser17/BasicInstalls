#### Deploy to cluster:
```bash
kubectl create namespace argocd && \
kubectl apply -n argocd -f 'https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml'
```

#### Install CLI:
```bash
curl -L 'https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64' -o argocd && \
chmod 755 ./argocd && mv argocd /usr/local/bin/
```

#### Get initial password:
```bash
kubectl -n argocd get secret argocd-initial-admin-secret -o go-template='{{.data.password | base64decode}}'
```

### Login with CLI:
```bash
kubectl get "svc/argocd-server" -n argocd
```
```bash
argocd login <ip/host>
```
```bash
argocd account update-password
```

#### Access:
```bash
kubectl port-forward "svc/argocd-server" -n argocd 8080:443
```

#### Remove:
```bash
kubectl delete -n argocd -f 'https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml' && \
kubectl delete namespace argocd --force
```

#### Disable redirect:
```bash
kubectl edit "cm/argocd-cmd-params-cm" -n argocd
```
```yaml
data:
  server.insecure: "true"
```
```bash
kubectl rollout restart deploy argocd-server -n argocd
```

#### Set WebHook Secret:
```bash
kubectl edit secret argocd-secret -n argocd
```
```yaml
stringData:
  webhook.github.secret: argocd-testing
```

#### URLs:
- [Docs](https://argo-cd.readthedocs.io/en/stable/)
- [Metrics](https://argo-cd.readthedocs.io/en/stable/operator-manual/metrics/)
- [Dashboard](https://github.com/argoproj/argo-cd/blob/master/examples/dashboard.json)
