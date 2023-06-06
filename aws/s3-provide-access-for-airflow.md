#### Execution required access to CloudWatch logs!
#### Access policy:
```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "AllowAccessToS3",
            "Effect": "Allow",
            "Action": [
                "s3:GetObject*",
                "s3:GetBucket*",
                "s3:ListBucket",
                "s3:PutObject",
                "s3:DeleteObject",
                "s3:GetEncryptionConfiguration",
                "s3:GetAccountPublicAccessBlock"
            ],
            "Resource": [
                "arn:aws:s3:::<bucket_name>/*",
                "arn:aws:s3:::<bucket_name>"
            ]
        }
    ]
}
```

#### Create role with next parameters:
- Trusted entity type: Custom trust policy.
- Custom trust policy:
```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "Service": [
                    "airflow.amazonaws.com",
                    "airflow-env.amazonaws.com"
                ],
                "AWS": [
                    "arn:aws:iam::<account_id>:user/<user_name_1>",
                    "arn:aws:iam::<account_id>:user/<user_name_2>",
                    "arn:aws:iam::<account_id>:user/<user_name_3>"
                ]
            },
            "Action": [
                "sts:TagSession",
                "sts:AssumeRole"
            ]
        }
    ]
}
```

#### Assume this role in the Airflow instance!
