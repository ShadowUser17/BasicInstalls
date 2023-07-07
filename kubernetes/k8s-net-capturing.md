#### Install CLI:
```bash
curl -L "https://github.com/kubeshark/kubeshark/releases/download/41.3/kubeshark_linux_amd64" -o kubeshark && \
chmod +x ./kubeshark && mv ./kubeshark /usr/local/bin/
```

#### Start capturing:
```bash
kubeshark tap -n <namespace>
```

#### Clean up:
```bash
kubeshark clean -n <namespace>
```

#### URLs:
- [Documentation](https://docs.kubeshark.co/en/introduction)
- [Releases](https://github.com/kubeshark/kubeshark/releases)
