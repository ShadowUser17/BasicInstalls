### Warning! Networking provided by Cilium.

#### Required for K3S:
```bash
--flannel-backend "none" \
--disable-network-policy
```

#### Install Cilium CLI:
```bash
curl -L "https://github.com/cilium/cilium-cli/releases/download/v0.15.2/cilium-linux-amd64.tar.gz" -o cilium-linux.tgz && \
tar -xzf cilium-linux.tgz cilium && mv ./cilium /usr/local/bin/ && rm -f ./cilium-linux.tgz
```

#### Install Hubble CLI:
```bash
curl -L "https://github.com/cilium/hubble/releases/download/v0.12.0/hubble-linux-amd64.tar.gz" -o hubble-linux.tgz && \
tar -xzf hubble-linux.tgz hubble && mv ./hubble /usr/local/bin/ && rm -f ./hubble-linux.tgz
```

#### Install Cilium:
```bash
cilium install \
--helm-set "prometheus.enabled=true" \
--helm-set "operator.prometheus.enabled=true"
```

#### Validate Cilium:
```bash
cilium status --wait
```

#### Validate network connectivity:
```bash
cilium connectivity test
```

#### Enable Hubble with UI:
```bash
cilium hubble enable --ui
```

#### Open Hubble UI:
```bash
cilium hubble ui
```

#### Validate Hubble:
```bash
cilium hubble port-forward &
```
```bash
hubble status
```

#### Uninstall:
```bash
cilium uninstall
```

#### Export manifests:
```bash
helm repo add cilium "https://helm.cilium.io/" && helm repo update
```
```bash
helm template cilium cilium/cilium \
--version "1.13.4" \
--namespace "kube-system" \
--set "operator.replicas=1" \
--set "prometheus.enabled=true" \
--set "operator.prometheus.enabled=true" > cilium-deploy.yml
```
```bash
helm template cilium cilium/cilium \
--version "1.13.4" \
--namespace "kube-system" \
--set "hubble.enabled=true" \
--set "hubble.relay.enabled=true" \
--set hubble.metrics.enabled="{dns,drop,tcp,flow,icmp,http}" > hubble-deploy.yml
```

#### URLs:
- [what-is-ebpf](https://ebpf.io/what-is-ebpf)
- [cilium-cli](https://github.com/cilium/cilium-cli/releases)
- [cilium-docs](https://docs.cilium.io/en/stable/)
- [cilium-releases](https://github.com/cilium/cilium/releases)
- [hubble-docs](https://github.com/cilium/hubble/blob/master/Documentation/README.md)
- [hubble-releases](https://github.com/cilium/hubble/releases)
