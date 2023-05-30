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
- Common use cases: Lambda.

#### Assume the role of Lambda in the create menu!
#### Check permissions:
```bash
aws s3 ls s3://<bucket_name>
```
