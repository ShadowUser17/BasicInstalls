#### Mount example:
```toml
[Unit]
Description=Nginx S3 site
After=network.target

[Mount]
What=nginx-example
Where=/var/nginx/example
Type=fuse.s3fs
Options=iam_role=auto,allow_other,gid=33,endpoint=us-west-2

[Install]
WantedBy=multi-user.target
```
