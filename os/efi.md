#### Add new EFI record:
```bash
efibootmgr -c -d /dev/sda -L Fedora -l \\EFI\\FEDORA\\SHIM.EFI
```

#### Delete EFI record:
```bash
efibootmgr -B -b 0002
```

#### Change boot record:
```bash
efibootmgr -a -b 0000
```
