#### Show active rules:
```bash
auditctl -l
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
