#### Example for Public NLB:
```yaml
annotations:
  service.beta.kubernetes.io/aws-load-balancer-type: "nlb"
  service.beta.kubernetes.io/aws-load-balancer-backend-protocol: "http"
  service.beta.kubernetes.io/aws-load-balancer-connection-idle-timeout: 60
  service.beta.kubernetes.io/aws-load-balancer-cross-zone-load-balancing-enabled: "true"
  service.beta.kubernetes.io/aws-load-balancer-subnets: "public-us-east-2a, public-us-east-2b, public-us-east-2c"
```

#### Example for Private NLB:
```yaml
annotations:
  service.beta.kubernetes.io/aws-load-balancer-type: "nlb"
  service.beta.kubernetes.io/aws-load-balancer-internal: "true"
  service.beta.kubernetes.io/aws-load-balancer-ssl-ports: "https"
  service.beta.kubernetes.io/aws-load-balancer-backend-protocol: "http"
  service.beta.kubernetes.io/aws-load-balancer-connection-idle-timeout: 60
  service.beta.kubernetes.io/aws-load-balancer-cross-zone-load-balancing-enabled: "true"
  service.beta.kubernetes.io/aws-load-balancer-subnets: "private-us-east-2a, private-us-east-2b, private-us-east-2c"
```

#### URLs:
- [load-balancer-controller](https://kubernetes-sigs.github.io/aws-load-balancer-controller/)
- [network-load-balancing](https://docs.aws.amazon.com/eks/latest/userguide/network-load-balancing.html)
