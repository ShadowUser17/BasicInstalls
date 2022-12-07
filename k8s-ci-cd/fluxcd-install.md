#### Install/Upgrade:
```bash
curl -L -O "https://github.com/fluxcd/flux2/releases/download/v0.37.0/flux_0.37.0_linux_amd64.tar.gz" && \
tar -xzf flux_0.37.0_linux_amd64.tar.gz flux && rm -f flux_0.37.0_linux_amd64.tar.gz && \
mv ./flux /usr/local/bin/ && flux bootstrap github \
--personal \
--owner=ShadowUser17 \
--branch=master \
--repository=test-flux \
--path="clusters/testing"
```

#### Remove:
```bash
flux uninstall --namespace=flux-system
```
