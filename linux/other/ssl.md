#### Add custom CA for Debian:
```bash
mkdir -p /usr/share/ca-certificates/custom
```
```bash
cp /root/CustomRootCA.crt /usr/share/ca-certificates/custom/
```
```bash
echo "custom/CustomRootCA.crt" >> /etc/ca-certificates.conf
```
```bash
update-ca-certificates --fresh
```

#### Add custom CA for Fedora:
```bash
cp /root/CustomRootCA.pem /etc/pki/ca-trust/source/anchors/
```
```bash
update-ca-trust
```

#### Add custom CA for Alpine:
```bash
cp /root/CustomRootCA.crt /etc/ssl/certs/
```
```bash
update-ca-certificates
```

#### Generate Self-signed certificate with CA:
```bash
openssl genrsa -aes256 -out ca.key 4096
```
```bash
openssl req -x509 -new -nodes -key ca.key -sha256 -days 3650 -out ca.crt
```
```bash
openssl genrsa -out server.key 2048
```
```bash
openssl req -new -key server.key -out server.csr
```
```bash
openssl x509 -req -in server.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out server.crt -days 730 -sha256 -extfile server.ext
```

#### Generate simple Self-signed certificate:
```bash
openssl req -x509 -sha256 -nodes -newkey rsa:2048 -keyout srv.key -out srv.crt -days 730
```

#### Read local certificate:
```bash
openssl x509 -inform pem -noout -text -in server.pem
```
```bash
openssl x509 -inform der -noout -text -in server.der
```

#### Read remote certificate:
```bash
openssl s_client -showcerts -connect <host:port>
```

#### Verify certs chain:
```bash
openssl verify -untrusted <srv.srt> <root.pem>
```
```bash
openssl verify -CAfile ca.crt server.crt
```
