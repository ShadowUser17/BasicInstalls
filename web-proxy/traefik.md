#### URLs:
- [Docs](https://doc.traefik.io/traefik/)
- [Images](https://hub.docker.com/_/traefik/tags)
- [Releases](https://github.com/traefik/traefik/releases)
- [Charts](https://github.com/traefik/traefik-helm-chart)

#### Install:
```bash
mkdir /opt/traefik && cd /opt/traefik
```
```bash
curl -L "https://github.com/traefik/traefik/releases/download/v2.10.3/traefik_v2.10.3_linux_amd64.tar.gz" \
-o traefik_linux_amd64.tar.gz && tar -xzf traefik_linux_amd64.tar.gz
```
```bash
curl -L "https://raw.githubusercontent.com/ShadowUser17/BasicInstalls/master/web-proxy/traefik-configs/config.yml" \
-o /opt/traefik/config.yml
```
```bash
curl -L "https://raw.githubusercontent.com/ShadowUser17/BasicInstalls/master/web-proxy/traefik-configs/traefik.service" \
-o /etc/systemd/system/traefik.service
```
```bash
chown root:root /opt/traefik/*
```
```bash
systemctl daemon-reload && systemctl enable --now traefik.service
```
