#### URLs:
- [docs](https://doc.traefik.io/traefik/)
- [releases](https://github.com/traefik/traefik/releases)
- [helm-chart](https://github.com/traefik/traefik-helm-chart)

#### Install:
```bash
mkdir /opt/traefik && cd /opt/traefik
```
```bash
curl -L "https://github.com/traefik/traefik/releases/download/v2.9.7/traefik_v2.9.7_linux_amd64.tar.gz" \
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
