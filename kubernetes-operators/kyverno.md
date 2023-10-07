#### Install to cluster:
```bash
helm repo add kyverno "https://kyverno.github.io/kyverno" && helm repo update
```
```bash
helm show values "kyverno/kyverno" > values.yml
```
```bash
helm upgrade --install kyverno "kyverno/kyverno" -n kyverno --create-namespace
```
```bash
helm install kyverno-policies "kyverno/kyverno-policies" -n kyverno
```

#### Get manifests:
```bash
helm template kyverno "kyverno/kyverno" -n kyverno --create-namespace > manifests.yml
```

#### Install CLI:
```bash
curl -L "https://github.com/kyverno/kyverno/releases/download/v1.10.3/kyverno-cli_v1.10.3_linux_x86_64.tar.gz" -o kyverno-cli.tgz && \
tar -xzf kyverno-cli.tgz kyverno && mv ./kyverno /usr/local/bin/ && rm -f kyverno-cli.tgz
```

#### URLs:
- [kyverno-docs](https://kyverno.io/docs/introduction/)
- [kyverno-releases](https://github.com/kyverno/kyverno/releases)
- [kyverno-examples](https://github.com/kyverno/policies)
- [kyverno-charts](https://github.com/kyverno/kyverno/tree/main/charts/kyverno)
- [kyverno-policies-charts](https://github.com/kyverno/kyverno/tree/main/charts/kyverno-policies)
