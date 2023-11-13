#### Install to cluster:
```bash
helm repo add cilium "https://helm.cilium.io/" && helm repo update
```
```bash
helm show values "cilium/cilium" > default-values.yml
```
```bash
helm upgrade --install cilium "cilium/cilium" -f values.yml -n kube-system
```

#### Export manifests:
```bash
helm template cilium "cilium/cilium" -f values.yml -n kube-system > manifests.yml
```

#### Install Cilium CLI:
```bash
curl -L "https://github.com/cilium/cilium-cli/releases/download/v${version}/cilium-linux-amd64.tar.gz" -o cilium-linux.tgz && \
tar -xzf cilium-linux.tgz cilium && mv ./cilium /usr/local/bin/ && rm -f ./cilium-linux.tgz
```

#### Install Hubble CLI:
```bash
curl -L "https://github.com/cilium/hubble/releases/download/v${version}/hubble-linux-amd64.tar.gz" -o hubble-linux.tgz && \
tar -xzf hubble-linux.tgz hubble && mv ./hubble /usr/local/bin/ && rm -f ./hubble-linux.tgz
```

#### Validate Cilium:
```bash
cilium status --wait
```

#### Validate network connectivity:
```bash
cilium connectivity test
```

#### Validate Hubble:
```bash
cilium hubble port-forward &
```
```bash
hubble status
```

#### URLs:
- [what-is-ebpf](https://ebpf.io/what-is-ebpf)
- [cilium-cli](https://github.com/cilium/cilium-cli/releases)
- [cilium-docs](https://docs.cilium.io/en/stable/)
- [cilium-metrics](https://docs.cilium.io/en/stable/observability/metrics/)
- [hubble-docs](https://github.com/cilium/hubble/blob/master/Documentation/README.md)
- [hubble-releases](https://github.com/cilium/hubble/releases)
