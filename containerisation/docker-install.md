#### URLs:
- [docker-install](https://docs.docker.com/engine/install/)

#### Install for Debian/Ubuntu:
```bash
apt-get update && apt-get install -y \
ca-certificates curl gnupg lsb-release
```

#### Install for Debian:
```bash
mkdir -p /etc/apt/keyrings && \
curl -fsSL 'https://download.docker.com/linux/debian/gpg' | gpg --dearmor -o /etc/apt/keyrings/docker.gpg
```
```bash
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list
```

#### Install for Ubuntu:
```bash
mkdir -p /etc/apt/keyrings && \
curl -fsSL 'https://download.docker.com/linux/ubuntu/gpg' | gpg --dearmor -o /etc/apt/keyrings/docker.gpg
```
```bash
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" > /etc/apt/sources.list.d/docker.list
```

#### Install for Debian/Ubuntu:
```bash
apt-get update && apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
```

#### Install for Fedora:
```bash
dnf install -y dnf-plugins-core && \
dnf config-manager --add-repo "https://download.docker.com/linux/fedora/docker-ce.repo"
```
```bash
dnf install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin && \
systemctl enable --now docker.service
```
