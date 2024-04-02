#### Default labels:
- `node.kubernetes.io/instance-type`
- `eks.amazonaws.com/capacityType`
- `eks.amazonaws.com/nodegroup`
- `eks.amazonaws.com/nodegroup-image`
- `topology.kubernetes.io/region`
- `topology.kubernetes.io/zone`

#### Prometheus example:
```
kube_node_labels{label_node_kubernetes_io_instance_type=~".*xlarge"}
```
```
kube_node_labels{label_eks_amazonaws_com_capacity_type="SPOT"}
```
```
kube_node_labels{label_eks_amazonaws_com_nodegroup=~".*"}
```
```
kube_node_labels{label_eks_amazonaws_com_nodegroup_image=~".*"}
```
```
kube_node_labels{label_topology_kubernetes_io_region=~".*"}
```
```
kube_node_labels{label_topology_kubernetes_io_zone=~".*"}
```
