#### Show available zones:
```bash
firewall-cmd --get-zones
```

#### Show zone info:
```bash
firewall-cmd --info-zone=<zone>
```

#### Show available services:
```bash
firewall-cmd --get-services
```

#### Show service info:
```bash
firewall-cmd --info-service=<service>
```

#### Show rules for zone:
```bash
firewall-cmd --list-all
```

#### Reload config:
```bash
firewall-cmd --reload
```

#### Add service:
```bash
firewall-cmd --permanent --add-service=<service>
```

#### Remove service:
```bash
firewall-cmd --permanent --remove-service=<service>
```

#### Add port:
```bash
firewall-cmd --permanent --add-port=<port/protocol>
```

#### Remove port:
```bash
firewall-cmd --permanent --remove-port=<port/protocol>
```
