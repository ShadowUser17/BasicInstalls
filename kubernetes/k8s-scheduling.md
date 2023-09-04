#### Manually set node:
Set `nodeName` in the pod template spec to force run pod on a specific node.

#### Select node with labels:
Add `nodeSelector` to the pod template spec.
```yaml
nodeSelector:
  kubernetes.io/os: "linux"
```

#### Schedule pods with nodeAffinity:
Add `affinity.nodeAffinity` to the pod template spec for enforce deployment in specific `AZ`.
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

#### Schedule pods with topologySpreadConstraints:
Add `topologySpreadConstraints` to the pod template spec for deploying 2 pods per node.
```yaml
topologySpreadConstraints:
  - maxSkew: 2
    topologyKey: "topology.kubernetes.io/zone"
    whenUnsatisfiable: "DoNotSchedule"
    labelSelector:
      matchLabels:
        app.kubernetes.io/type: "cache"
```

#### Schedule pods with Taints/Tolerations:
Add `tolerations` to the pod template spec to allow scheduling pods on marked nodes.
```yaml
tolerations:
  - key: "node-role.kubernetes.io/master"
    operator: "Exists"
    effect: "NoSchedule"
```

#### URLs:
- [taint-and-toleration](https://kubernetes.io/docs/concepts/scheduling-eviction/taint-and-toleration/)
- [assign-pod-node](https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/)
- [topology-spread-constraints](https://kubernetes.io/docs/concepts/scheduling-eviction/topology-spread-constraints/)
