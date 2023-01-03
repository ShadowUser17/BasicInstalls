#### URLs:
- [loki-releases](https://github.com/grafana/loki/releases)
- [loki-docs](https://github.com/grafana/loki/tree/main/docs/sources)

#### Enable log collection:
```yaml
template:
  metadata:
    annotations:
      promtail.io/collect: "true"
```
