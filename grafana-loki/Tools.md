#### URLs:
- [LogQL](https://grafana.com/docs/loki/latest/logql/)
- [LogCLI](https://grafana.com/docs/loki/latest/tools/logcli/)

#### Install LogCLI for Linux:
```bash
curl -LO "https://github.com/grafana/loki/releases/download/v2.8.3/logcli-linux-amd64.zip" && \
unzip logcli-linux-amd64.zip && mv ./logcli-linux-amd64 /usr/local/bin/logcli && rm -f logcli-linux-amd64.zip
```

#### Install LogCLI for MacOS:
```bash
curl -LO "https://github.com/grafana/loki/releases/download/v2.8.3/logcli-darwin-amd64.zip" && \
unzip logcli-darwin-amd64.zip && mv ./logcli-darwin-amd64 /usr/local/bin/logcli && rm -f logcli-darwin-amd64.zip
```

#### Get logs:
```bash
LOKI_ADDR="http://grafana-loki.k3s" logcli query '{namespace="testing",pod="test-app-1",container="app"}'
```
