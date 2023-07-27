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

#### Install CDKTF:
```bash
curl -fsSL "https://rpm.nodesource.com/setup_16.x" | bash -
```
```bash
npm install -g "typescript@4.4"
```
```bash
npm install -g "cdktf-cli@latest"
```

#### Create project:
- Create a folder for the project.
- Go to folder and run: `cdktf init --template="typescript"`
- Set `Project Name: <name>`
- Set `Project Description: <description>`
- Set `Do you want to start from an existing Terraform project: No`
- Set `Do you want to send crash reports to the CDKTF team: No`
- Install AWS provider: `npm install @cdktf/provider-aws`
- Install modules: `cdktf get`
