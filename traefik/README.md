#### URLs:
- [Download](https://github.com/traefik/traefik/releases)

#### Install:
```bash
mkdir /opt/traefik && cd /opt/traefik
```
```bash
curl -L "https://github.com/traefik/traefik/releases/download/v2.8.1/traefik_v2.8.1_linux_amd64.tar.gz" \
-o traefik_linux_amd64.tar.gz && tar -xzf traefik_linux_amd64.tar.gz
```
```bash
curl -L "https://raw.githubusercontent.com/ShadowUser17/BasicInstalls/master/traefik/config.yml" \
-o /opt/traefik/config.yml
```
```bash
curl -L "https://raw.githubusercontent.com/ShadowUser17/BasicInstalls/master/traefik/traefik.service" \
-o /etc/systemd/system/traefik.service
```
```bash
chown root:root /opt/traefik/*
```
```bash
systemctl daemon-reload && systemctl enable --now traefik.service
```
