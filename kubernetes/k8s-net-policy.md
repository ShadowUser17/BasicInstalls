#### Example:
```yaml
apiVersion: "networking.k8s.io/v1"
kind: "NetworkPolicy"
metadata:
  namespace: "testing"
  name: "external-access"
spec:
  policyTypes: ["Ingress"]
  podSelector:
    matchLabels:
      app.kubernetes.io/name: "redis"
  ingress:
    - from:
        - namespaceSelector: {}
          podSelector:
            matchLabels:
              app.kubernetes.io/name: "prometheus"
        - namespaceSelector: {}
          podSelector:
            matchLabels:
              required.cache: "redis"
```

#### URLs:
- [network-policies](https://kubernetes.io/docs/concepts/services-networking/network-policies/)
