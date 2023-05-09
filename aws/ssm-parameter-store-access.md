#### Access policy:
```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "AllowGetParameters",
            "Effect": "Allow",
            "Action": [
                "ssm:GetParameter",
                "ssm:GetParameters",
                "ssm:GetParametersByPath"
            ],
            "Resource": [
                "arn:aws:ssm:<region>:<account_id>:parameter/configs/<env_name>/<param_name>/*",
                "arn:aws:ssm:<region>:<account_id>:parameter/secrets/<env_name>/<param_name>/*"
            ]
        },
        {
            "Sid": "AllowDescribeParameters",
            "Effect": "Allow",
            "Action": [
                "ssm:DescribeParameters"
            ],
            "Resource": [
                "arn:aws:ssm:<region>:<account_id>:*"
            ]
        }
    ]
}
```

#### Assume this policy to the destination user!
#### Check access:
```bash
aws ssm get-parameter --name </configs/env_name/param_name/key> --region <region>
```
