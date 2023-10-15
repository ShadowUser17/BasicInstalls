#### Create app from CLI:
```bash
argocd app create whoami \
--repo "https://github.com/ShadowUser17/test-argocd.git" \
--revision master \
--path whoami \
--dest-server "https://kubernetes.default.svc" \
--dest-namespace testing \
--sync-policy automated
```

#### Declarative create app:
```bash
kubectl apply -f application.yml -n argocd
```

#### List apps:
```bash
argocd app list
```

#### Manual sync:
```bash
argocd app sync argocd/whoami
```
