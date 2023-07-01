#### URLs:
- [Docs](https://github.com/grafana/loki/tree/main/docs/sources)
- [Releases](https://github.com/grafana/loki/releases)
- [Images](https://hub.docker.com/r/grafana/loki/tags)
- [Charts](https://github.com/grafana/helm-charts)

#### Enable log collection:
```yaml
template:
  metadata:
    annotations:
      promtail.io/collect: "true"
```

#### List running services:
```bash
curl "http://127.0.0.1:3100/services"
```

#### Validate cluster membership (reader):
```bash
curl "http://127.0.0.1:3100/compactor/ring"
```

#### Validate cluster membership (writer):
```bash
curl "http://127.0.0.1:3100/distributor/ring"
```
