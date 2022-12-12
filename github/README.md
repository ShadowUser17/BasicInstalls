#### URLs:
- [Actions](https://docs.github.com/en/actions)

#### Install:
```bash
useradd --system -s /sbin/nologin -b /var/lib -m runner
```
```bash
curl -L "https://github.com/actions/runner/releases/download/v2.299.1/actions-runner-linux-x64-2.299.1.tar.gz" -o /var/lib/runner/actions-runner.tgz && \
tar -xzf /var/lib/runner/actions-runner.tgz -C /var/lib/runner/ && rm -f /var/lib/runner/actions-runner.tgz
```
```bash
cd /var/lib/runner && sudo -u runner -s
```
```bash
./config.sh --disableupdate --unattended --url "$REPO_URL" --token "$REPO_KEY"
```
```bash
curl -L "https://raw.githubusercontent.com/ShadowUser17/BasicInstalls/master/github/runner.service" -o /etc/systemd/system/runner.service && \
systemctl daemon-reload && systemctl enable --now runner.service
```

#### Remove:
```bash
cd /var/lib/runner && sudo -u runner -s
```
```bash
./config.sh remove --token "$REPO_KEY"
```
