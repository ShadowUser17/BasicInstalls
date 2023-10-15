#### URLs:
- [Docs](https://caddyserver.com/docs/)
- [Images](https://hub.docker.com/_/caddy/tags)
- [Releases](https://github.com/caddyserver/caddy/releases)

#### Install:
```bash
curl -L "https://github.com/caddyserver/caddy/releases/download/v${version}/caddy_${version}_linux_amd64.tar.gz" -o caddy_linux_amd64.tgz && \
tar -xzf caddy_linux_amd64.tgz caddy && chown root:root ./caddy && mv ./caddy /usr/local/bin/ && rm -f caddy_linux_amd64.tgz
```
