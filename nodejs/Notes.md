#### Build application in Docker:
```bash
git clone <repo_url> && cd <repo_dir>
```
```bash
docker run --rm --name node_build_env --volume "${PWD}:/data:rw" --entrypoint "/bin/sh" -it node:18-alpine
```
```bash
cd /data && npm install && npm run build
```

#### Use custom DNS:
```
--dns 172.30.1.252 --dns-search local.dev
```

#### Use custom repo:
- Create `.npmrc`:
```toml
strict-ssl=false
registry=<repo_url>
```
- Login to repo:
```bash
npm adduser
```
