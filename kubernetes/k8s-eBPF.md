#### Install Cilium CLI:
```bash
curl -L "https://github.com/cilium/cilium-cli/releases/download/v0.12.11/cilium-linux-amd64.tar.gz" -o cilium-linux.tgz && \
tar -xzf cilium-linux.tgz cilium && mv ./cilium /usr/local/bin/ && rm -f ./cilium-linux.tgz
```

#### Install Hubble CLI:
```bash
curl -L "https://github.com/cilium/hubble/releases/download/v0.10.0/hubble-linux-amd64.tar.gz" -o hubble-linux.tgz && \
tar -xzf hubble-linux.tgz hubble && mv ./hubble /usr/local/bin/ && rm -f ./hubble-linux.tgz
```

#### Install Cilium:
```bash
cilium install
```

#### Validate Cilium:
```bash
cilium status --wait
```
```bash
kubectl -n kube-system get pods -l k8s-app=cilium
```

#### Enable Hubble:
```bash
cilium hubble enable
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

#### URLs:
- [cilium-cli](https://github.com/cilium/cilium-cli/releases)
- [what-is-ebpf](https://ebpf.io/what-is-ebpf)
- [cilium-docs](https://docs.cilium.io/en/stable/)
- [hubble-docs](https://github.com/cilium/hubble/blob/master/Documentation/README.md)
- [cilium-releases](https://github.com/cilium/cilium/releases)
- [hubble-releases](https://github.com/cilium/hubble/releases)
