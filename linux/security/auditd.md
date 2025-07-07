#### Show active rules:
```bash
auditctl -l
```

#### Read rules from file:
```bash
auditctl -R <path_to_file>
```

#### Regenerate rules in /etc/audit/rules.d:
```bash
augenrules --load
```

#### Apply FS rules:
- `path_to_file` is the file or directory that is audited.
- `permissions` are the permissions that are logged (r/w/x/a).
- `key_name` is an optional string that helps you identify log entry.
```bash
auditctl -w <path_to_file> -p <permissions> -k <key_name>
```

#### Apply SysCall rules:
- `action` and `filter` specify when a certain event is logged.
- `system_call` specifies the system call by its name.
- `field=value` specifies additional options to match events.
```bash
auditctl -a <action,filter> -S <system_call> -F <field=value> -k <key_name>
```

#### SysCall filters:
- Action values: `always` or `never`.
- Filter values: `task`, `exit`, `user`, and `exclude`.
- The `-S` option allows you to group several rules.

#### Show user related events:
```bash
ausearch -ua <uid> -i
```

#### Show summary report:
```bash
aureport -x --summary
```
```bash
aureport -u --failed --summary -i
```

#### URLs:
- [auditd-wiki](https://github.com/linux-audit/audit-documentation/wiki)
