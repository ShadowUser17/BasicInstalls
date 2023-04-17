#### Access policy:
```json
{
    "Version": "2012-10-17",
    "Statement": [
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
                "StringEquals": {
                    "oidc.eks.<region>.amazonaws.com/id/<oidc_id>:sub": "system:serviceaccount:<namespace>:<serviceaccount>",
                    "oidc.eks.<region>.amazonaws.com/id/<oidc_id>:aud": "sts.amazonaws.com"
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
