#### Access policy:
```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "AllowAssumeRole",
            "Effect": "Allow",
            "Action": [
                "sts:AssumeRole"
            ],
            "Resource": [
                "arn:aws:iam::<account_id>:role/*"
            ]
        },
        {
            "Sid": "AllowAccessToS3",
            "Effect": "Allow",
            "Action": [
                "s3:GetObject",
                "s3:PutObject",
                "s3:ListBucket",
                "s3:DeleteObject"
            ],
            "Resource": [
                "arn:aws:s3:::<bucket_name>/*",
                "arn:aws:s3:::<bucket_name>"
            ]
        }
    ]
}
```

#### Role trusted entities:
```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "Federated": "arn:aws:iam::<account_id>:oidc-provider/oidc.eks.<region>.amazonaws.com/id/<oidc_id>"
            },
            "Action": [
                "sts:AssumeRoleWithWebIdentity"
            ],
            "Condition": {
                "ForAllValues:StringEquals": {
                    "oidc.eks.<region>.amazonaws.com/id/<oidc_id>:sub": [
                        "system:serviceaccount:<namespace>:<serviceaccount>"
                    ]
                }
            }
        }
    ]
}
```

#### Service account definition:
```yaml
apiVersion: "v1"
kind: "ServiceAccount"
metadata:
  name: "<name>"
  namespace: "<namespace>"
  annotations:
    eks.amazonaws.com/role-arn: "arn:aws:iam::<account_id>:role/<role_name>"
```
