#### K6:
- [API](https://k6.io/docs/javascript-api/)
- [Docs](https://k6.io/docs/)
- [Releases](https://github.com/grafana/k6/releases)

#### Install K6:
```bash
curl -L "https://github.com/grafana/k6/releases/download/v0.44.0/k6-v0.44.0-linux-amd64.tar.gz" -o k6-linux-amd64.tgz && \
tar -xzf k6-linux-amd64.tgz k6-v0.44.0-linux-amd64/k6 && mv ./k6-v0.44.0-linux-amd64/k6 /usr/local/bin/ && \
rm -f ./k6-linux-amd64.tgz && rmdir ./k6-v0.44.0-linux-amd64
```
