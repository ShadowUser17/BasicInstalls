#### Install Operator:
```bash
jx admin operator --username <user> --token <key>
```
```bash
jx admin operator --url=<repo> --username <user> --token <key>
```

#### Install CLI:
```bash
curl -L -O "https://github.com/jenkins-x/jx/releases/download/v3.10.18/jx-linux-amd64.tar.gz" && \
tar -xzf jx-linux-amd64.tar.gz jx && rm -f jx-linux-amd64.tar.gz && mv ./jx /usr/local/bin/
```
