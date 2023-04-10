#### URLs:
- [Home](https://plugins.jenkins.io/generic-webhook-trigger/)

#### Send webhook manually:
```bash
curl -k -d '{
    "tag": "v1.0.0",
    "repository": "ci-cd-testing"
}' \
-H "Content-Type: application/json" \
"https://jenkins.k3s/generic-webhook-trigger/invoke?token=testing"
```
