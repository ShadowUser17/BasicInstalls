#### URLs:
- [Docs](https://github.com/actions/actions-runner-controller/tree/master/docs)
- [Releases](https://github.com/actions/actions-runner-controller/releases)

#### Install:
```bash
helm repo add actions-runner-controller "https://actions-runner-controller.github.io/actions-runner-controller"
```
```bash
helm upgrade --install --namespace actions-runner-system --create-namespace \
--set=authSecret.create=true \
--set=authSecret.github_token="$GITHUB_TOKEN" \
--wait actions-runner-controller actions-runner-controller/actions-runner-controller
```

#### Example deploy:
```bash
kubectl apply -n testing -f "https://raw.githubusercontent.com/ShadowUser17/BasicInstalls/master/github/runner-deploy.yml"
```

#### Get runners:
```bash
kubectl get runners -A
```

#### Get secret:
```bash
kubectl -n actions-runner-system get secret controller-manager -o jsonpath="{.data.github_token}" | base64 -d; echo
```

#### Update secret:
```bash
echo -n "$GITHUB_TOKEN" | base64
```
```bash
kubectl -n actions-runner-system patch secret controller-manager -p '{"data": {"github_token": "<secret>"}}' && \
kubectl rollout restart deploy actions-runner-controller -n actions-runner-system
```
