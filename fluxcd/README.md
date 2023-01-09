#### URLs:
- [FluxCD](https://fluxcd.io/flux/get-started/)
- [Flagger](https://fluxcd.io/flagger/usage/how-it-works/)

#### Install/Upgrade:
```bash
curl -L "https://github.com/fluxcd/flux2/releases/download/v0.38.3/flux_0.38.3_linux_amd64.tar.gz" -o "flux_linux_amd64.tgz" && \
tar -xzf flux_linux_amd64.tgz flux && rm -f flux_linux_amd64.tgz && \
mv ./flux /usr/local/bin/ && flux install
```

#### Export installation manifests:
```bash
flux install --export > flux2-install.yaml
```

#### App deploy:
```bash
flux create source git templates \
--url="ssh://git@github.com/ShadowUser17/ci-cd-testing" \
--private-key-file="./github_ssh_key" \
--branch=fluxcd \
--interval=1m
```
```bash
flux create kustomization whoami \
--source=templates \
--path="./K8S/whoami" \
--prune=true \
--interval=5m
```

#### Show resources:
```bash
flux get all
```

#### Suspend:
```bash
kubectl patch gitrepository <repository> --field-manager=flux-client-side-apply -p '{"spec": {"suspend": true }}'
```

#### Validate:
```bash
flux check
```

#### Remove:
```bash
flux uninstall --namespace=flux-system
```
