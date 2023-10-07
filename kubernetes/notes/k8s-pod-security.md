#### Pod level example:
```yaml
securityContext:
  fsGroup: 65534
  runAsUser: 65534
  runAsGroup: 65534
```

#### Container level example:
```yaml
securityContext:
  allowPrivilegeEscalation: false
  readOnlyRootFilesystem: true
  runAsNonRoot: true
  capabilities:
    drop: ["ALL"]
```

#### URLs:
- [security-context](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/)
- [pod-security-standards](https://kubernetes.io/docs/concepts/security/pod-security-standards/)
