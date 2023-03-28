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
