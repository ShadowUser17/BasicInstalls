#### URLs:
- [DNS](https://kubernetes.io/docs/concepts/services-networking/dns-pod-service/)

#### Brief info:
- Default domain: `*.cluster.local`
- Search domains: `<namespace>.svc.cluster.local svc.cluster.local cluster.local`
- Default records: `A/AAAA` and `SRV` (named ports only).
- Service record format: `_<port>._<protocol>.<service>.<namespace>.svc.cluster.local`
