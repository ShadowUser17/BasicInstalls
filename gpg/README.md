#### List existing keys:
```bash
gpg --list-public-keys && \
gpg --list-secret-keys
```

#### Read key file:
```bash
gpg --show-keys <keyring_file>
```

#### Create new key:
```bash
gpg --default-new-key-algo rsa2048 --gen-key
```

#### Import key pair:
```bash
gpg --import <keyring_file>
```

#### Export key pair:
```bash
gpg --export <pub_key_id> > public.gpg && \
gpg --export-secret-keys <sec_key_id> > private.gpg
```

#### Encrypt file:
```bash
gpg --encrypt --recipient <key_id> <file_name>
```

#### Decrypt file:
```bash
gpg --decrypt --recipient <key_id> <file_name>
```

#### Delete key:
```bash
gpg --delete-secret-keys <sec_key_id>
```
```bash
gpg --delete-keys <pub_key_id>
```
