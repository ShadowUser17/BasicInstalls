#### Configure AWS profiles (~/.aws/config):
```toml
[default]
region = ***
output = json

[eks_cluster]
account_id     = ***
role_arn       = ***
region         = ***
source_profile = default
```

#### Configure AWS credentials (~/.aws/credentials):
```toml
[backup]
aws_access_key_id     = ***
aws_secret_access_key = ***
```

#### Get temporary credentials:
```bash
aws sts get-session-token --profile backup --serial-number "arn:aws:iam::<account_id>:mfa/<user_name>" --token-code <mfa-pin>
```

#### Save temporary credentials to ~/.aws/credentials:
```toml
[default]
aws_access_key_id     = ***
aws_secret_access_key = ***
aws_session_token     = ***
```

#### Check permissions:
```bash
aws sts get-caller-identity --profile default
```

#### Update EKS credentials:
```bash
aws eks update-kubeconfig --profile <name> --name <cluster_name>
```
```bash
kubectl config current-context
```

#### Get ECR password:
```bash
aws ecr get-login-password --region <name> --profile <name>
```
