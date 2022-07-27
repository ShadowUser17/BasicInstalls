### Install for Debian
```bash
apt-get update && apt-get install -y \
ca-certificates curl gnupg lsb-release
```
```bash
mkdir -p /etc/apt/keyrings && \
curl -fsSL 'https://download.docker.com/linux/debian/gpg' | gpg --dearmor -o /etc/apt/keyrings/docker.gpg
```
```bash
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list
```
```bash
apt-get update && apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
```
