#### Namespace level example:
- Available modes: `privileged`, `baseline`, `restricted`
```yaml
labels:
  pod-security.kubernetes.io/enforce: "baseline"
  pod-security.kubernetes.io/enforce-version: "latest"
  pod-security.kubernetes.io/warn: "baseline"
  pod-security.kubernetes.io/warn-version: "latest"
```
```bash
kubectl label namespace <name> \
"pod-security.kubernetes.io/enforce=baseline" \
"pod-security.kubernetes.io/enforce-version=latest" \
"pod-security.kubernetes.io/warn=baseline" \
"pod-security.kubernetes.io/warn-version=latest"
```

#### Pod level example:
```yaml
automountServiceAccountToken: false
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
- [security-checklist](https://kubernetes.io/docs/concepts/security/security-checklist/)
- [security-context](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/)
- [pod-security-standards](https://kubernetes.io/docs/concepts/security/pod-security-standards/)
