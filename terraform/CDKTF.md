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
- Install AWS provider: `npm install @cdktf/provider-aws`
- Install modules: `cdktf get`

#### Generate terraform configs:
```bash
cdktf synth
```
The terraform config for each stack in this location:
```
ls -hl cdktf.out/stacks/*/cdk.tf.json
```

#### Import existing resources:
```bash
cd cdktf.out/stacks/<stack_name>/
```
```bash
terraform import <terraform_type.terraform_name> <resource_aws_id>
```
```bash
cd - && cdktf deploy <stack_name>
```
