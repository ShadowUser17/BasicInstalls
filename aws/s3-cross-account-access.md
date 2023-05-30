### Based on the Bucket policy:
#### Bucket policy with single role or user:
```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "AWS": [
                    "arn:aws:iam::<account_id>:role/<role_name>",
                    "arn:aws:iam::<account_id>:user/<user_name>"
                ]
            },
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

#### Bucket policy with multiple roles:
```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "AWS": "arn:aws:iam::<account_id>:root"
            },
            "Action": [
                "s3:GetObject",
                "s3:PutObject",
                "s3:ListBucket",
                "s3:DeleteObject"
            ],
            "Resource": [
                "arn:aws:s3:::<bucket_name>/*",
                "arn:aws:s3:::<bucket_name>"
            ],
            "Condition": {
                "ArnEquals": {
                    "aws:PrincipalArn": [
                        "arn:aws:iam::<account_id>:role/<role_name_1>",
                        "arn:aws:iam::<account_id>:role/<role_name_2>",
                        "arn:aws:iam::<account_id>:role/<role_name_3>"
                    ]
                }
            }
        }
    ]
}
```

### Based on the Role:
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
            "Sid": "AllowCrossAccountAccess",
            "Effect": "Allow",
            "Principal": {
                "AWS": [
                    "arn:aws:iam::<account_id>:role/<role_name>",
                    "arn:aws:iam::<account_id>:user/<user_name>"
                ]
            },
            "Action": [
                "sts:AssumeRole",
                "sts:TagSession"
            ]
        }
    ]
}
```

#### Assume this role in the destination account!
#### Check permissions:
```bash
aws sts get-caller-identity
```
```bash
aws s3 ls s3://<bucket_name>
```
