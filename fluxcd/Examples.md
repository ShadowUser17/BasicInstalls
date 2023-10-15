#### Helm example:
```yaml
apiVersion: "source.toolkit.fluxcd.io/v1beta2"
kind: "HelmRepository"
metadata:
  name: "test-repo"
  namespace: "flux-system"
spec:
  url: "https://test-repo.github.io/charts"
  interval: "1h"
```
```yaml
apiVersion: "helm.toolkit.fluxcd.io/v2beta1"
kind: "HelmRelease"
metadata:
  name: "test-app"
  namespace: "flux-system"
spec:
  interval: "5m"
  releaseName: "test-app"
  targetNamespace: "testing"
  chart:
    spec:
      chart: "test-app"
      version: "1.0.0"
      sourceRef:
        kind: "HelmRepository"
        name: "test-repo"
```

#### Kustomize example:
```yaml
apiVersion: "source.toolkit.fluxcd.io/v1"
kind: "GitRepository"
metadata:
  name: "test-repo"
  namespace: "flux-system"
spec:
  interval: "1h"
  url: "https://github.com/example/test-repo.git"
  ref:
    branch: "master"
```
```yaml
apiVersion: "kustomize.toolkit.fluxcd.io/v1"
kind: "Kustomization"
metadata:
  name: "test-app"
  namespace: "flux-system"
spec:
  path: "./test-app"
  prune: true
  interval: "5m"
  sourceRef:
    kind: "GitRepository"
    name: "test-repo"
```
