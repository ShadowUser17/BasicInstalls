#### Access policy:
```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "AllowAccessToLogs",
            "Effect": "Allow",
            "Action": [
                "logs:CreateLogStream",
                "logs:CreateLogGroup",
                "logs:PutLogEvents",
                "logs:GetQueryResults",
                "logs:GetLogRecord",
                "logs:GetLogGroupFields",
                "logs:GetLogEvents"
            ],
            "Resource": [
                "arn:aws:logs:<region>:<account_id>:<log_group>:<stream_name>"
            ]
        }
    ]
}
```
