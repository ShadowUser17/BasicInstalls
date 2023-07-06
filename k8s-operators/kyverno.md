#### Install to cluster:
```bash
kubectl create -f "https://github.com/kyverno/kyverno/releases/download/v1.10.1/install.yaml"
```

#### Install CLI:
```bash
curl -L "https://github.com/kyverno/kyverno/releases/download/v1.10.1/kyverno-cli_v1.10.1_linux_x86_64.tar.gz" -o kyverno-cli.tgz && \
tar -xzf kyverno-cli.tgz kyverno && mv ./kyverno /usr/local/bin/ && rm -f kyverno-cli.tgz
```

#### URLs:
- [Docs](https://kyverno.io/docs/introduction/)
- [Releases](https://github.com/kyverno/kyverno/releases)
- [Examples](https://github.com/kyverno/policies)
