#### Ncat start handler:
```bash
ncat -v -n -l <host> <port>
```

#### Ncat simple portscan:
```bash
nc -z -v <host> <port_range>
```

#### Gobuster DNS subdomain enumeration:
```bash
gobuster dns -d <domain> -w <wordlist> -o <report> -q
```

#### Gobuster directory/file enumeration:
```bash
gobuster dir -u <url> -w <wordlist> -o <report> -q
```

#### Nmap SYN scan:
```bash
nmap -Pn -iL <target_list> -oN <scan_report> -sS -p-
```

#### Nmap verbose scan:
```bash
nmap -Pn -iL <target_list> -oN <scan_report> -sV -sC -p <target_port>
```
