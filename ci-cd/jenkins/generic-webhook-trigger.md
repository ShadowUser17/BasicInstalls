#### URLs:
- [Home](https://plugins.jenkins.io/generic-webhook-trigger/)

#### Send webhook from CLI:
```bash
curl -k -d '{
    "tag": "v1.0.0",
    "repository": "ci-cd-testing"
}' \
-H "Content-Type: application/json" \
"https://jenkins.k3s/generic-webhook-trigger/invoke?token=testing"
```

#### Send webhook from Python:
```python
from urllib import request

data = '''{
    "tag": "v1.0.0",
    "repository": "ci-cd-testing"
}'''

req = request.Request(
    url="https://jenkins.k3s/generic-webhook-trigger/invoke?token=testing",
    method="POST", headers={"Content-Type": "application/json"}, data=data.encode()
)

with request.urlopen(req) as client:
    client.read()
```
