#### Get local VPN address:
```bash
ip -j address show dev tun0 | jq -r '.[0].addr_info[0].local'
```

#### Get external TOR address:
```bash
curl --proxy "socks5://127.0.0.1:9050" "http://ident.me/"
```

#### Ncat start handler:
```bash
ncat -v -n -l <host> <port>
```

#### Nmap SYN scan:
```bash
nmap -Pn -iL <target_list> -oN <scan_report> -sS -p-
```

#### Nmap verbose scan:
```bash
nmap -Pn -iL <target_list> -oN <scan_report> -sV -sC -p <target_port>
```
