#### URLs:
- [introduction](https://prometheus.io/docs/introduction/overview/)
- [prometheus](https://github.com/prometheus/prometheus/releases)
- [pushgateway](https://github.com/prometheus/pushgateway/releases)
- [alertmanager](https://github.com/prometheus/alertmanager/releases)
- [rules_linter](https://github.com/cloudflare/pint/releases)
- [helm-charts](https://github.com/prometheus-community/helm-charts)
- [go-libraries](https://pkg.go.dev/github.com/prometheus/common)
- [client_golang](https://github.com/prometheus/client_golang)
- [client_python](https://github.com/prometheus/client_python)

#### Install rules linter:
```bash
curl -L "https://github.com/cloudflare/pint/releases/download/v${version}/pint-${version}-linux-amd64.tar.gz" -o pint-linux-amd64.tgz && \
tar -xzf pint-linux-amd64.tgz pint-linux-amd64 && mv ./pint-linux-amd64 /usr/local/bin/pint && rm -f pint-linux-amd64.tgz
```
