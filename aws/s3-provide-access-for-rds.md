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

#### Create role with next parameters:
- Trusted entity type: AWS service.
- Common use cases: RDS.
- Trusted entities:
```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "Service": "rds.amazonaws.com"
            },
            "Action": [
                "sts:AssumeRole"
            ],
            "Condition": {
                "StringEquals": {
                    "aws:SourceArn": "arn:aws:rds:<region>:<account_id>:db:<db_instance>",
                    "aws:SourceAccount": "<account_id>"
                }
            }
        }
    ]
}
```

#### Assume this role in the RDS instance!
