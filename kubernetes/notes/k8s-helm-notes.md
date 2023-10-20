#### List available versions:
```bash
helm search repo <repo> -l
```

#### Show releases:
```bash
helm list -n <namespace>
```
```bash
helm history <release> -n <namespace>
```

#### Show default values:
```bash
helm show values <repo>
```

#### Revert the previous release:
```bash
helm rollback <release> <revision> -n <namespace>
```

#### Install specific version:
```bash
helm install <release> <repo> -f values.yml -n <namespace> --version <version>
```

#### Upgrade to specific version:
```bash
helm upgrade <release> <repo> -f values.yml -n <namespace> --version <version>
```
```bash
helm upgrade --install <release> <repo> -f values.yml -n <namespace> --version <version>
```

#### Add config hash to pod annotations:
```yaml
annotations:
  checksum/config: {{ .Files.Get "config.yml" | sha256sum | quote }}
```
