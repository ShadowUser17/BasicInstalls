#### K6:
- [API](https://k6.io/docs/javascript-api/)
- [Docs](https://k6.io/docs/)
- [Releases](https://github.com/grafana/k6/releases)

#### Install K6 for Linux:
```bash
curl -L "https://github.com/grafana/k6/releases/download/v0.46.0/k6-v0.46.0-linux-amd64.tar.gz" -o k6-linux-amd64.tgz && \
tar -xzf k6-linux-amd64.tgz k6-v0.46.0-linux-amd64/k6 && mv ./k6-v0.46.0-linux-amd64/k6 /usr/local/bin/ && \
rm -f ./k6-linux-amd64.tgz && rmdir ./k6-v0.46.0-linux-amd64
```

#### Install K6 for MacOS:
```bash
curl -L "https://github.com/grafana/k6/releases/download/v0.46.0/k6-v0.46.0-macos-amd64.zip" -o k6-macos-amd64.zip && \
unzip k6-macos-amd64.zip k6-v0.46.0-macos-amd64/k6 && mv ./k6-v0.46.0-macos-amd64/k6 ~/go/bin/ && \
rm -f ./k6-macos-amd64.zip && rmdir ./k6-v0.46.0-macos-amd64
```
