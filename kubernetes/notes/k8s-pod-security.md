#### Cluster level example:
```yaml
apiVersion: "node.k8s.io/v1"
kind: "RuntimeClass"
metadata:
  name: "crun"
handler: "crun"
```
- Use `runtimeClassName` on Pod level:
```yaml
spec:
  runtimeClassName: "crun"
```

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

#### Pod level examples:
```yaml
automountServiceAccountToken: false
securityContext:
  fsGroup: 65534
  runAsUser: 65534
  runAsGroup: 65534
```
```yaml
securityContext:
  seccompProfile:
    type: "RuntimeDefault"
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
- [runtime-class](https://kubernetes.io/docs/concepts/containers/runtime-class/)
- [seccomp](https://kubernetes.io/docs/tutorials/security/seccomp/)
- [security-context](https://kubernetes.io/docs/tasks/configure-pod-container/security-context/)
- [pod-security-standards](https://kubernetes.io/docs/concepts/security/pod-security-standards/)
