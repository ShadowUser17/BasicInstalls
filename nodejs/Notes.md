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
