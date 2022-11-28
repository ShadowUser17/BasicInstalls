#### URLs:
- [Overview](https://argo-cd.readthedocs.io/en/stable/)
- [Example](https://github.com/argoproj/argocd-example-apps)

#### Basic install:
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
kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d; echo
```

#### Disable redirect:
```bash
kubectl edit cm/argocd-cmd-params-cm -n argocd
```
```yaml
data:
  server.insecure: "true"
```
```bash
kubectl rollout restart deploy argocd-server -n argocd
```
