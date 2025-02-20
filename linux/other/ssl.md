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

#### Generate Self-signed certificate:
```bash
openssl req -x509 -sha256 -nodes -newkey rsa:2048 -keyout srv.key -out srv.crt -days 730
```

#### Read local certificate:
```bash
openssl x509 -inform pem -noout -text -in srv.pem
```
```bash
openssl x509 -inform der -noout -text -in srv.der
```

#### Read remote certificate:
```bash
openssl s_client -showcerts -connect <host:port>
```

#### Verify certs chain:
```bash
openssl verify -untrusted <srv.srt> <root.pem>
```
