#### Recommendations:
- For cpu set only requests to avoid throttling.
- For memory set requests and limits are equal.

#### Limit per namespace:
```yaml
apiVersion: "v1"
kind: "LimitRange"
metadata:
  namespace: "testing"
  name: "memory-limit"
spec:
  limits:
  - type: "Container"
    default:
      memory: "512Mi"
    defaultRequest:
      memory: "128Mi"
```

#### Limit per container:
```yaml
resources:
  requests:
    cpu: "100m"
    memory: "128Mi"
  limits:
    cpu: "100m"
    memory: "512Mi"
```

#### URLs:
- [pod-qos](https://kubernetes.io/docs/concepts/workloads/pods/pod-qos/)
- [limit-range](https://kubernetes.io/docs/concepts/policy/limit-range/)
- [resource-quotas](https://kubernetes.io/docs/concepts/policy/resource-quotas/)
- [manage-resources-containers](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/)
