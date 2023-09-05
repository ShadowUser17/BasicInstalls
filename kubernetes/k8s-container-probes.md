#### Probe types:
- `startupProbe`
- `livenessProbe`
- `readinessProbe`

#### Examples:
```yaml
livenessProbe:
  initialDelaySeconds: 20
  periodSeconds: 10
  timeoutSeconds: 5
  failureThreshold: 5
  httpGet:
    path: "/-/healthy"
    port: 9090
```
```yaml
readinessProbe:
  initialDelaySeconds: 10
  periodSeconds: 10
  timeoutSeconds: 5
  failureThreshold: 3
  httpGet:
    path: "/-/ready"
    port: 9090
```

#### URLs:
- [configure-liveness-readiness-startup-probes](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-startup-probes/)
