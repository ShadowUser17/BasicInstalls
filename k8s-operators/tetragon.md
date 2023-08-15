#### URLs:
- [Docs](https://tetragon.cilium.io/docs/)
- [Releases](https://github.com/cilium/tetragon/releases)

#### Export manifests:
```bash
helm repo add cilium "https://helm.cilium.io" && helm repo update
```
```bash
helm template tetragon cilium/tetragon -n kube-system > tetragon-deploy.yml
```
