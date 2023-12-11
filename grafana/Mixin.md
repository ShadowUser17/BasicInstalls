#### Install jsonnet-bundler:
```bash
go install -a "github.com/jsonnet-bundler/jsonnet-bundler/cmd/jb@latest"
```

#### Install jsonnet:
```bash
go install "github.com/google/go-jsonnet/cmd/jsonnet@latest"
```

#### Install grafana-grizzly:
```bash
curl -L "https://github.com/grafana/grizzly/releases/download/v${version}/grr-linux-amd64" -o ./grr && \
chmod +x ./grr && mv ./grr /usr/local/bin/
```

#### Build dashboards:
- Clone repository.
- Run the next commands:
```bash
jb install
```
```bash
jsonnet -J ./vendor dashboards.jsonnet -o dashboards.json
```

#### Deploy to Grafana:
```bash
GRAFANA_URL='<URL>' GRAFANA_TOKEN='<SA_TOKEN>' grr apply dashboards.libsonnet
```

#### URLs:
- [jsonnet-language](https://jsonnet.org/)
- [go-jsonnet-docs](https://github.com/google/go-jsonnet/blob/master/README.md)
- [grafana-grizzly](https://grafana.github.io/grizzly/)
- [jsonnet-bundler](https://github.com/jsonnet-bundler/jsonnet-bundler/blob/master/README.md)
