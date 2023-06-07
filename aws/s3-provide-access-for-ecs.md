#### ECS required the next permissions:
- [execution-role](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_execution_IAM_role.html)

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
- Common use cases: EC2.
- Trusted entities:
```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Principal": {
                "Service": [
                    "ec2.amazonaws.com",
                    "ecs-tasks.amazonaws.com"
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

#### Assume this role in the ECS task!
#### Check permissions:
- Image URI: `docker.io/amazon/aws-cli:latest`
- Entry point: `/usr/local/bin/aws,s3,ls,s3://<bucket_name>/`
