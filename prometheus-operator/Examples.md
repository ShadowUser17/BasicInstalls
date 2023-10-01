#### Create Grafana dashboard:
- Required labels:
```yaml
labels:
  grafana_dashboard: "1"
```
```bash
kubectl create configmap <name> -n monitoring --from-file=dashboard.json
```
```bash
kubectl label configmap <name> -n monitoring grafana_dashboard="1"
```
