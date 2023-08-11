#### Install from deb:
```bash
curl -L "https://github.com/cli/cli/releases/download/v2.32.1/gh_2.32.1_linux_amd64.deb" -o gh_linux_amd64.deb && \
dpkg -i gh_linux_amd64.deb && rm -f gh_linux_amd64.deb
```

#### Install from rpm:
```bash
curl -L "https://github.com/cli/cli/releases/download/v2.32.1/gh_2.32.1_linux_amd64.rpm" -o gh_linux_amd64.rpm && \
rpm -U gh_linux_amd64.rpm ; rm -f gh_linux_amd64.rpm
```

#### Configure:
```bash
gh auth login
```
