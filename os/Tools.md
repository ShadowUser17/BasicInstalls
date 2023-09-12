#### Install fq:
```bash
curl -L "https://github.com/wader/fq/releases/download/v0.7.0/fq_0.7.0_linux_amd64.tar.gz" -o fq_linux_amd64.tgz && \
tar -xzf fq_linux_amd64.tgz fq && mv ./fq /usr/local/bin/ && rm -f fq_linux_amd64.tgz
```

#### Install pwru:
```bash
curl -LO "https://github.com/cilium/pwru/releases/download/v1.0.2/pwru-linux-amd64.tar.gz" && \
tar -xzf pwru-linux-amd64.tar.gz pwru && mv ./pwru /usr/local/bin/ && rm -f pwru-linux-amd64.tar.gz
```

#### Install Ventoy:
```bash
curl -L "https://github.com/ventoy/Ventoy/releases/download/v1.0.95/ventoy-1.0.95-linux.tar.gz" -o ventoy-linux.tgz && \
tar -xzf ventoy-linux.tgz && mv ./ventoy-1.0.95 ./ventoy && rm -f ventoy-linux.tgz
```
