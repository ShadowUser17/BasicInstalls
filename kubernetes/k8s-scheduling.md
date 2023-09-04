#### Manually set node:
Set `nodeName` in the pod template spec to force run pod on a specific node.

#### Select node with labels:
Add `nodeSelector` to pod template spec.
```yaml
nodeSelector:
    kubernetes.io/os: "linux"
```

#### Schedule pods with nodeAffinity:
Add `affinity.nodeAffinity` to pod template spec for enforce deployment in specific `AZ`.
```yaml
affinity:
  nodeAffinity:
    requiredDuringSchedulingIgnoredDuringExecution:
      nodeSelectorTerms:
        - matchExpressions:
            - key: "topology.kubernetes.io/region"
              operator: "In"
              values: ["us-east-2"]
            - key: "topology.kubernetes.io/zone"
              operator: "In"
              values: ["us-east-2a", "us-east-2b"]
```

#### Schedule pods with podAntiAffinity:
Add `affinity.podAntiAffinity` to the pod template spec to prevent running more than one copy per node.
```yaml
affinity:
  podAntiAffinity:
    requiredDuringSchedulingIgnoredDuringExecution:
      - labelSelector:
          matchExpressions:
            - key: "app.kubernetes.io/type"
              operator: "In"
              values: ["cache"]
          topologyKey: "topology.kubernetes.io/zone"
```
