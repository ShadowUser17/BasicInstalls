#### URLs:
- [Download](https://github.com/traefik/traefik/releases)

#### Install:
```bash
mkdir /opt/traefik && cd /opt/traefik && chown root:root ./*
```
```bash
curl -L "https://github.com/traefik/traefik/releases/download/v2.8.1/traefik_v2.8.1_linux_amd64.tar.gz" \
-o traefik_linux_amd64.tar.gz && tar -xzf traefik_linux_amd64.tar.gz
```
```bash
curl -L "https://raw.githubusercontent.com/ShadowUser17/BasicInstalls/master/traefik/traefik.service" \
-o /etc/systemd/system/traefik.service
```
```bash
systemctl daemon-reload && systemctl enable traefik.service && systemctl start traefik.service
```
