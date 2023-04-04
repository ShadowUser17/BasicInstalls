#### List installed packages on Debian/Fedora:
```bash
dpkg -l
```
```bash
rpm -qa
```

#### List package files on Debian/Fedora:
```bash
dpkg -L <package-name>
```
```bash
rpm -ql <package-name>
```

#### Show who owns this file on Debian/Fedora:
```bash
dpkg -S <cmd-name>
```
```bash
rpm -qf <file-path>
```

#### Show package dependencies on Debian/Fedora:
```bash
dpkg -I <package-path>
```
```bash
rpm -q --requires <package-name>
```