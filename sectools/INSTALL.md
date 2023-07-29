#### Install gitleaks:
```bash
curl -L "https://github.com/zricethezav/gitleaks/releases/download/v8.17.0/gitleaks_8.17.0_linux_x64.tar.gz" -o gitleaks_linux_x64.tgz && \
tar -xzf gitleaks_linux_x64.tgz gitleaks && mv ./gitleaks /usr/local/bin/ && rm -f gitleaks_linux_x64.tgz
```

#### Install amass:
```bash
curl -LO "https://github.com/owasp-amass/amass/releases/download/v4.1.0/amass_Linux_amd64.zip" && \
unzip amass_Linux_amd64.zip amass_Linux_amd64/amass && mv amass_Linux_amd64/amass /usr/local/bin/ && \
rmdir amass_Linux_amd64 && rm -f amass_Linux_amd64.zip
```

#### Install snyk:
```bash
npm -g install snyk@latest && snyk auth <auth_token>
```

#### Install osv-scanner:
```bash
curl -L "https://github.com/google/osv-scanner/releases/download/v1.3.6/osv-scanner_1.3.6_linux_amd64" -o osv-scanner && \
chmod 755 ./osv-scanner && mv ./osv-scanner /usr/local/bin/
```

#### Install pdtm:
```bash
curl -L "https://github.com/projectdiscovery/pdtm/releases/download/v0.0.8/pdtm_0.0.8_linux_amd64.zip" -o pdtm_linux_amd64.zip && \
unzip pdtm_linux_amd64.zip pdtm && mv ./pdtm /usr/local/bin/ && rm -f pdtm_linux_amd64.zip
```
