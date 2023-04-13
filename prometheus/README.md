#### URLs:
- [docs](https://prometheus.io/docs/introduction/overview/)
- [prometheus](https://github.com/prometheus/prometheus/releases)
- [alertmanager](https://github.com/prometheus/alertmanager/releases)
- [helm-charts](https://github.com/prometheus-community/helm-charts)
- [client_python](https://github.com/prometheus/client_python)
- [client_golang](https://github.com/prometheus/client_golang)
- [rules_linter](https://github.com/cloudflare/pint/releases)

#### Install rules linter:
```bash
curl -L "https://github.com/cloudflare/pint/releases/download/v0.43.1/pint-0.43.1-linux-amd64.tar.gz" -o pint-linux-amd64.tgz && \
tar -xzf pint-linux-amd64.tgz pint-linux-amd64 && mv ./pint-linux-amd64 /usr/local/bin/pint && rm -f pint-linux-amd64.tgz
```
