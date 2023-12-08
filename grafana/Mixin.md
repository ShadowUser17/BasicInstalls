#### Install jsonnet-bundler:
```bash
go install -a github.com/jsonnet-bundler/jsonnet-bundler/cmd/jb@latest
```

#### Install grafana-grizzly:
```bash
curl -L "https://github.com/grafana/grizzly/releases/download/v${version}/grr-linux-amd64" -o ./grr && \
chmod +x ./grr && mv ./grr /usr/local/bin/
```

#### Build project:
- Clone repository.
- Run the next commands:
```bash
jb install
```
```bash
GRAFANA_URL='<URL>' GRAFANA_TOKEN='<SA_TOKEN>' grr apply dashboards.libsonnet
```

#### URLs:
- [grafana-api-auth](https://grafana.com/docs/grafana/latest/developers/http_api/auth/)
- [grafana-grizzly](https://grafana.github.io/grizzly/)
- [jsonnet-bundler](https://github.com/jsonnet-bundler/jsonnet-bundler/blob/master/README.md)
