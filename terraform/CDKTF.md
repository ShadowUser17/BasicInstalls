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
curl -fsSL "https://rpm.nodesource.com/setup_lts.x" | bash -
```
```bash
npm install -g "typescript@4.9"
```
```bash
npm install -g "cdktf-cli@0.17.3"
```

#### Create project:
- Create a folder for the project.
- Go to folder and run: `cdktf init --template="typescript"`
- Install AWS provider: `npm install @cdktf/provider-aws`
- Install modules: `cdktf get`

#### Deploy stack:
```bash
cdktf list
```
```bash
cdktf deploy <stack_name>
```

#### Update dependencies:
```bash
rm -rf package-lock.json node_modules
```
- Change versions of components in `package.json`
```bash
npm install
```

#### Generate terraform configs:
```bash
cdktf synth
```
The terraform config for each stack in this location:
```
ls -hl cdktf.out/stacks/*/cdk.tf.json
```

#### Import existing resource:
```bash
cd cdktf.out/stacks/<stack_name>/
```
```bash
terraform import <terraform_type.terraform_name> <resource_aws_id>
```
```bash
cd - && cdktf deploy <stack_name>
```

#### Remove resource from state:
```bash
terraform state rm <terraform_type.terraform_name>
```

#### Show current state:
```bash
cd cdktf.out/stacks/<stack_name>/
```
```bash
terraform state pull
```

#### List state resources:
```bash
cd cdktf.out/stacks/<stack_name>/
```
```bash
terraform state list
```
