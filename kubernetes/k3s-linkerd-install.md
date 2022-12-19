#### Install CLI and check cluster:
```bash
curl -L "https://github.com/linkerd/linkerd2/releases/download/stable-2.12.3/linkerd2-cli-stable-2.12.3-linux-amd64" -o linkerd && \
chmod 755 ./linkerd && mv ./linkerd /usr/local/bin/ && linkerd check --pre
```

#### Install to cluster:
```bash
linkerd install --crds | kubectl apply -f - && \
linkerd install | kubectl apply -f - && \
sleep 1m && linkerd check
```

#### Uninstall:
```bash
linkerd uninstall | kubectl delete -f -
```

#### URLs:
- [Releases](https://github.com/linkerd/linkerd2/releases)
- [Documentation](https://linkerd.io/2/getting-started/)
