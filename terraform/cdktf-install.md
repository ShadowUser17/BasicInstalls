#### Install Terraform:
```bash
dnf install -y dnf-plugins-core
```
```bash
dnf config-manager --add-repo "https://rpm.releases.hashicorp.com/fedora/hashicorp.repo"
```
```bash
dnf -y install terraform
```

#### Install CDK:
```bash
curl -fsSL "https://rpm.nodesource.com/setup_16.x" | bash -
```
```bash
npm install -g "typescript@4.4.4"
```
```bash
npm install -g "cdktf-cli@latest"
```
