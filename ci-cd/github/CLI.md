#### Install from deb:
```bash
curl -L "https://github.com/cli/cli/releases/download/v${version}/gh_${version}_linux_amd64.deb" -o gh_linux_amd64.deb && \
dpkg -i gh_linux_amd64.deb && rm -f gh_linux_amd64.deb
```

#### Install from rpm:
```bash
curl -L "https://github.com/cli/cli/releases/download/v${version}/gh_${version}_linux_amd64.rpm" -o gh_linux_amd64.rpm && \
rpm -U gh_linux_amd64.rpm ; rm -f gh_linux_amd64.rpm
```

#### Install from tar:
```bash
curl -L "https://github.com/cli/cli/releases/download/v${version}/gh_${version}_linux_amd64.tar.gz" -o gh_linux_amd64.tgz && \
tar -xzf gh_linux_amd64.tgz "gh_${version}_linux_amd64/bin/gh" && mv "gh_${version}_linux_amd64/bin/gh" /usr/local/bin/ && \
rm -rf "gh_${version}_linux_amd64" gh_linux_amd64.tgz
```

#### Configure:
```bash
gh auth login
```
