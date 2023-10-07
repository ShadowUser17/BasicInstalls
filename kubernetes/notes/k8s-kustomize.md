#### Kustomization file example:
- [kustomization](https://kubectl.docs.kubernetes.io/references/kustomize/kustomization/)
```yaml
apiVersion: "kustomize.config.k8s.io/v1beta1"
kind: "Kustomization"
namespace: "testing"
resources:
  - "base/service.yml"
  - "base/access.yml"
  - "base/deploy.yml"
configMapGenerator:
  - name: "config"
    files: ["config/config.yml"]
images:
  - name: "test/web-app"
    newTag: "latest"
labels:
  - pairs:
      app.kubernetes.io/managed-by: "kustomize"
```

#### Component file example:
- [components](https://kubectl.docs.kubernetes.io/guides/config_management/components/)
```yaml
apiVersion: "kustomize.config.k8s.io/v1alpha1"
kind: "Component"
configMapGenerator:
  - name: "config"
    files: ["config/config.yml"]
secretGenerator:
  - name: "secret"
    files: ["secret/secret.yml"]
patchesStrategicMerge:
  - "config-patch.yml"
  - "deploy-patch.yml"
```
