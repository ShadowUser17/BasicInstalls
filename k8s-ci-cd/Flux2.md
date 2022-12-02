#### URLs:
- [Concepts](https://fluxcd.io/flux/concepts/)
- [Releases](https://github.com/fluxcd/flux2/releases)

#### Install/Upgrade:
```bash
curl -L -O "https://github.com/fluxcd/flux2/releases/download/v0.37.0/flux_0.37.0_linux_amd64.tar.gz" && \
tar -xzf flux_0.37.0_linux_amd64.tar.gz flux && rm -f flux_0.37.0_linux_amd64.tar.gz && \
mv ./flux /usr/local/bin/ && flux install
```

#### Remove:
```bash
flux uninstall --namespace=flux-system
```
