#### Install and configure an environment:
```bash
curl -L "https://github.com/kevincobain2000/gobrew/releases/download/v${version}/gobrew-linux-amd64" -o gobrew && \
chmod 755 ./gobrew && mv ./gobrew /usr/local/bin/
```
```bash
echo -e 'export PATH="$HOME/.gobrew/current/bin:$HOME/go/bin:$PATH"\nexport GOROOT="$HOME/.gobrew/current/go"' >> ~/.bashrc
```
```bash
gobrew install <version>
```

#### Install Delve Debugger:
```bash
go install github.com/go-delve/delve/cmd/dlv@latest
```

#### Install Go Security Checker:
```bash
go install github.com/securego/gosec/v2/cmd/gosec@latest
```

#### Install nFPM packager:
```bash
go install github.com/goreleaser/nfpm/v2/cmd/nfpm@latest
```

#### Install golangci-lint from deb:
```bash
curl -L "https://github.com/golangci/golangci-lint/releases/download/v${version}/golangci-lint-${version}-linux-amd64.deb" -o golangci-lint-linux-amd64.deb && \
dpkg -i golangci-lint-linux-amd64.deb && rm -f golangci-lint-linux-amd64.deb
```

#### Install golangci-lint from rpm:
```bash
curl -L "https://github.com/golangci/golangci-lint/releases/download/v${version}/golangci-lint-${version}-linux-amd64.rpm" -o golangci-lint-linux-amd64.rpm && \
rpm -U golangci-lint-linux-amd64.rpm ; rm -f golangci-lint-linux-amd64.rpm
```
