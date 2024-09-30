#### Set Pod Priority:
```yaml
apiVersion: "scheduling.k8s.io/v1"
kind: "PriorityClass"
metadata:
  name: "high-priority"
value: 1000000
globalDefault: false
description: "High priority class for critical system DaemonSets"
```
- Use `priorityClassName` on Pod level:
```yaml
spec:
  priorityClassName: "high-priority"
```

#### URLs:
- [configure-pdb](https://kubernetes.io/docs/tasks/run-application/configure-pdb/)
- [pod-priority-preemption](https://kubernetes.io/docs/concepts/scheduling-eviction/pod-priority-preemption/)
