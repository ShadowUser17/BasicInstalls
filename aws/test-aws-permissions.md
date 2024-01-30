#### Apply new permissions:
```bash
unset AWS_ACCESS_KEY_ID
unset AWS_SECRET_ACCESS_KEY
unset AWS_SESSION_TOKEN
unset ACCOUNT_ID
```
```bash
curl -s "http://169.254.169.254/latest/meta-data/identity-credentials/ec2/info" | jq -r '.AccountId' | awk '{print "export", "ACCOUNT_ID="$0}' > /tmp/variables
```
```bash
curl -s "http://169.254.169.254/latest/meta-data/instance-id" | awk '{print "export", "INSTANCE_ID="$0}' >> /tmp/variables
```
```bash
. /tmp/variables && rm -f /tmp/variables
```
```bash
aws sts assume-role --role-arn "${ROLE_ARN}" --role-session-name "BuilderHostname=${INSTANCE_ID}" > /tmp/session.json
```
```bash
jq -r '.Credentials.AccessKeyId' /tmp/session.json | awk '{print "export", "AWS_ACCESS_KEY_ID="$0}' > /tmp/variables
jq -r '.Credentials.SecretAccessKey' /tmp/session.json | awk '{print "export", "AWS_SECRET_ACCESS_KEY="$0}' >> /tmp/variables
jq -r '.Credentials.SessionToken' /tmp/session.json | awk '{print "export", "AWS_SESSION_TOKEN="$0}' >> /tmp/variables
```
```bash
. /tmp/variables && rm -f /tmp/variables
```
- Execute your aws command to check new permissions.
