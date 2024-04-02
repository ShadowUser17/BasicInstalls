#### Validate rules:
```bash
promtool check rules rules.yml
```

#### Run unit tests:
```bash
promtool test rules --diff tests.yml
```

#### Example rule file:
```yaml
groups:
  - name: "example.rules"
    rules:
      - alert: "InstancesDown"
        expr: 'sum(up{job="app"}) == 0'
        for: "5m"
        labels:
          severity: "info"
        annotations:
          summary: "All instances of app are down."
          description: "All instances of app are down."
```

#### Example test file:
- Warning! The `eval_time` must be bigger than `for` in the alert rule!
```yaml
rule_files:
  - "alerts.yml"
tests:
  - name: "example.rules"
    interval: "1m"
    input_series:
        # 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
      - series: 'up{job="app", instance="app-1"}'
        values: "0x14"
        # 1 1 1 1 1 0 0 0 0 0 0 0 0 0 0 1 1 1 1 1
      - series: 'up{job="app", instance="app-2"}'
        values: "1x4 0x9 1x4"
    alert_rule_test:
      - alertname: "InstancesDown"
        eval_time: "5m"
        exp_alerts: []
```

#### URLs:
- [alerting-rules](https://prometheus.io/docs/prometheus/latest/configuration/alerting_rules/)
- [recording-rules](https://prometheus.io/docs/prometheus/latest/configuration/recording_rules/)
- [unit-testing-rules](https://prometheus.io/docs/prometheus/latest/configuration/unit_testing_rules/)
