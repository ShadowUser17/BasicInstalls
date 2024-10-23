#### Get Grafana credentials:
```bash
kubectl -n monitoring get secret prom-operator-grafana -o go-template='{{index .data "admin-user" | base64decode}}'
```
```bash
kubectl -n monitoring get secret prom-operator-grafana -o go-template='{{index .data "admin-password" | base64decode}}'
```

#### Get Alertmanager config:
```bash
kubectl -n monitoring exec -it alertmanager-prom-operator-kube-prometh-alertmanager-0 -- cat /etc/alertmanager/config_out/alertmanager.env.yaml
```

#### Get operator selectors:
```bash
kubectl -n monitoring get prometheus prom-operator-kube-prometh-prometheus -o jsonpath='{.spec.podMonitorSelector}'
```
```bash
kubectl -n monitoring get prometheus prom-operator-kube-prometh-prometheus -o jsonpath='{.spec.probeSelector}'
```
```bash
kubectl -n monitoring get prometheus prom-operator-kube-prometh-prometheus -o jsonpath='{.spec.ruleSelector}'
```
```bash
kubectl -n monitoring get prometheus prom-operator-kube-prometh-prometheus -o jsonpath='{.spec.scrapeConfigSelector}'
```
```bash
kubectl -n monitoring get prometheus prom-operator-kube-prometh-prometheus -o jsonpath='{.spec.serviceMonitorSelector}'
```
```bash
kubectl -n monitoring get alertmanager prom-operator-kube-prometh-alertmanager -o jsonpath='{.spec.alertmanagerConfigSelector}'
```

#### Disable the next rules for EKS:
- `kubeSchedulerAlerting`
- `kubeSchedulerRecording`
- `kubeControllerManager`
- `kubeProxy`

#### URLs:
- [API](https://prometheus-operator.dev/docs/api-reference/api/)
- [Docs](https://prometheus-operator.dev/docs/getting-started/introduction/)
- [Chart](https://github.com/prometheus-community/helm-charts/tree/main/charts/kube-prometheus-stack)
- [Releases](https://github.com/prometheus-operator/prometheus-operator/releases)
