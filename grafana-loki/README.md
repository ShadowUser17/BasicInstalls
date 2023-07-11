#### URLs:
- [Docs](https://grafana.com/docs/loki/latest/)
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

#### Run load test:
```bash
k6 run ./my-write-scenario.js
```
```bash
k6 run ./my-read-scenario.js
```

#### List running services:
```bash
curl "http://127.0.0.1:3100/services"
```

#### Validate cluster membership:
```bash
curl "http://127.0.0.1:3100/distributor/ring"
```
```bash
curl "http://127.0.0.1:3100/compactor/ring"
```
```bash
curl "http://127.0.0.1:3100/ruler/ring"
```
