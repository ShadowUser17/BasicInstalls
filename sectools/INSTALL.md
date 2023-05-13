#### Install gitleaks:
```bash
curl -L "https://github.com/zricethezav/gitleaks/releases/download/v8.16.3/gitleaks_8.16.3_linux_x64.tar.gz" -o gitleaks_linux_x64.tgz && \
tar -xzf gitleaks_linux_x64.tgz gitleaks && mv ./gitleaks /usr/local/bin/ && rm -f gitleaks_linux_x64.tgz
```

#### Install ddosify:
```bash
curl -L "https://github.com/ddosify/ddosify/releases/download/v1.0.1/ddosify_1.0.1_linux_amd64.tar.gz" -o ddosify_linux_amd64.tgz && \
tar -xzf ddosify_linux_amd64.tgz ddosify && ./ddosify /usr/local/bin/ && rm -f ddosify_linux_amd64.tgz
```

#### Install snyk:
```bash
npm -g install snyk@latest && snyk auth <auth_token>
```

#### Install osv-scanner:
```bash
curl -L "https://github.com/google/osv-scanner/releases/download/v1.3.2/osv-scanner_1.3.2_linux_amd64" -o osv-scanner && \
chmod 755 ./osv-scanner && mv ./osv-scanner /usr/local/bin/
```

#### Install pdtm:
```bash
curl -L "https://github.com/projectdiscovery/pdtm/releases/download/v0.0.6/pdtm_0.0.6_linux_amd64.zip" -o pdtm_linux_amd64.zip && \
unzip pdtm_linux_amd64.zip pdtm && mv ./pdtm /usr/local/bin/ && rm -f pdtm_linux_amd64.zip
```
