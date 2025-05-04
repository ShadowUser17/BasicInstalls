#### Display the GRUB menu:
```bash
echo "GRUB_TIMEOUT_STYLE=menu" >> /etc/default/grub
```
```bash
grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg
```

#### Get root shell:
- Hold `Shift` to open the GRUB2 menu.
- Change path to init system: `init=/bin/bash`
- Remove `quiet` and `splash` arguments.

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
