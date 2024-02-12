#### Create presigned URL:
- `--expires-in` the number of seconds.
```bash
aws s3 presign "s3://${BUCKET_NAME}/${BUCKET_FILE}" --expires-in 604800 --region "${AWS_REGION}" --endpoint-url "https://${AWS_REGION}.amazonaws.com"
```

#### Usage presigned URL:
```bash
curl -L "${BUCKET_FILE_URL}" -o "${BUCKET_FILE}"
```

#### URLs:
- [using-presigned-url](https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-presigned-url.html)
