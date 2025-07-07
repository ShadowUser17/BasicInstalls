#### Show status:
```bash
getenforce
```
```bash
sestatus
```

#### Change mode:
```bash
setenforce <1|0>
```

#### Manage objects:
```bash
semanage <object> <options>
```

#### Show FS context:
```bash
ls -l -Z <path>
```

#### Change FS context:
```bash
chcon -t <type> <path>
```

#### Restore FS context:
```bash
restorecon <path>
```

#### Show policy status:
```bash
getsebool -a
```
```bash
getsebool <policy>
```

#### Change policy mode:
```bash
setsebool -P <policy=0|1>
```

#### Show policy modules:
```bash
semodule -l
```

#### URLs:
- [learning_selinux](https://docs.rockylinux.org/guides/security/learning_selinux/)
