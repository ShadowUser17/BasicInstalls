#### Display the GRUB menu:
```bash
echo "GRUB_TIMEOUT_STYLE=menu" >> /etc/default/grub
```
```bash
grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg
```

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
