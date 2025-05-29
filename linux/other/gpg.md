#### List existing keys:
```bash
gpg --list-public-keys
```
```bash
gpg --list-secret-keys
```

#### Read key file:
```bash
gpg --show-keys <keyring_file>
```

#### Create new key:
```bash
gpg --full-generate-key
```

#### Import key pair:
```bash
gpg --import <keyring_file>
```

#### Export key pair:
```bash
export KEY_ID=''
```
```bash
gpg --armor --export "${KEY_ID}" > "${KEY_ID}_public.gpg"
```
```bash
gpg --armor --export-secret-keys "${KEY_ID}" > "${KEY_ID}_private.gpg"
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
