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
            "Sid": "AllowAssumeRole",
            "Effect": "Allow",
            "Principal": {
                "Service": "ec2.amazonaws.com"
            },
            "Action": [
                "sts:AssumeRole",
                "sts:TagSession"
            ]
        }
    ]
}
```

#### Assume this role in the EC2 instance!
#### Check permissions:
```bash
aws s3 ls s3://<bucket_name>
```
