#### Install/Upgrade:
```bash
curl -L -O "https://github.com/fluxcd/flux2/releases/download/v0.37.0/flux_0.37.0_linux_amd64.tar.gz" && \
tar -xzf flux_0.37.0_linux_amd64.tar.gz flux && rm -f flux_0.37.0_linux_amd64.tar.gz && \
mv ./flux /usr/local/bin/ && flux install
```

#### App deploy:
```bash
flux create source git docker-templates \
--url="https://github.com/ShadowUser17/DockerTemplates.git" \
--branch=master \
--interval=1m
```
```bash
flux create kustomization whoami \
--source=docker-templates \
--path="./K8S/whoami" \
--prune=true \
--interval=5m \
--target-namespace=default
```

#### Show Sources/Sustomizes:
```bash
flux get sources git && flux get kustomizations
```

#### Validate:
```bash
flux check
```

#### Remove:
```bash
flux uninstall --namespace=flux-system
```
