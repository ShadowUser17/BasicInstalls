#### Create regular user:
```bash
useradd -m testing -s /bin/bash
```

#### Create system user:
```bash
useradd <username> -r -m -b /var/lib -s /usr/sbin/nologin
```

#### Add user to group:
```bash
usermod -aG <group> <username>
```

#### Delete user from group:
```bash
usermod -rG <group> <username>
```
```bash
gpasswd -d <username> <group>
```

#### Get user info:
```bash
getent passwd <username>
```
```bash
getent shadow <username>
```
```bash
groups <username>
```

#### Delete user Home/SELinux:
```bash
userdel -r -Z <username>
```
