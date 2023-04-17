#### Install gitleaks:
```bash
curl -L "https://github.com/zricethezav/gitleaks/releases/download/v8.16.2/gitleaks_8.16.2_linux_x64.tar.gz" -o gitleaks_linux_x64.tgz && \
tar -xzf gitleaks_linux_x64.tgz gitleaks && mv ./gitleaks /usr/local/bin/ && rm -f gitleaks_linux_x64.tgz
```

#### Install pdtm:
```bash
curl -L "https://github.com/projectdiscovery/pdtm/releases/download/v0.0.6/pdtm_0.0.6_linux_amd64.zip" -o pdtm_linux_amd64.zip && \
unzip pdtm_linux_amd64.zip pdtm && mv ./pdtm /usr/local/bin/ && rm -f pdtm_linux_amd64.zip
```
