#### Get module/object documentation:
```bash
python3 -m pydoc <module>
```
```bash
python3 -m pydoc <module>.<object>
```

#### Format JSON output:
```bash
<command> | python3 -m json.tool
```

#### Base64 encode/decode:
```bash
<command> | python3 -m base64 -
```
```bash
<command> | python3 -m base64 -d -
```

#### Generate UUID:
- Required: Python 3.12
```bash
python3 -m uuid [-u <type>]
```

#### Manage TAR archive:
```bash
python3 -m tarfile -l <file>
```
```bash
python3 -m tarfile -e <file>
```
```bash
python3 -m tarfile -c <name> <file1> <...>
```

#### Run HTTP server:
```bash
python3 -m http.server -b <address> <port>
```
