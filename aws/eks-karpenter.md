#### Create NodeClass:
```yaml
apiVersion: "karpenter.k8s.aws/v1beta1"
kind: "EC2NodeClass"
metadata:
  name: "default"
spec:
  amiFamily: "AL2"
  role: "karpenter-node-role"
  subnetSelectorTerms:
    - tags:
        karpenter.sh/discovery: "test-aws-eks"
  securityGroupSelectorTerms:
    - tags:
        karpenter.sh/discovery: "test-aws-eks"
```

#### Create NodePool:
```yaml
apiVersion: "karpenter.sh/v1beta1"
kind: "NodePool"
metadata:
  name: "spot"
spec:
  template:
    spec:
      requirements:
        - key: "karpenter.sh/capacity-type"
          operator: "In"
          values: ["spot"]
        - key: "node.kubernetes.io/instance-type"
          operator: "In"
          values: ["m4.xlarge", "m5.xlarge", "m5a.xlarge", "m5ad.xlarge", "m5d.xlarge", "m5dn.xlarge", "m5n.xlarge"]
      nodeClassRef:
        name: "default"
```

#### Enable monitoring:
```yaml
apiVersion: "monitoring.coreos.com/v1"
kind: "PodMonitor"
metadata:
  name: "karpenter-monitor"
  namespace: "karpenter"
  labels:
    release: "prom-operator"
spec:
  selector:
    matchLabels:
      app.kubernetes.io/name: "karpenter"
  podMetricsEndpoints:
    - port: "http-metrics"
      interval: "30s"
      honorLabels: true
```

#### URLs:
- [Docs](https://karpenter.sh/docs/)
- [Releases](https://github.com/aws/karpenter-provider-aws/releases)
- [Examples](https://github.com/aws/karpenter-provider-aws/tree/main/examples)
