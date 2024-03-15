#### Create key file:
```bash
dd if=/dev/random of=./key.bin bs=1 count=512
```

#### Create disk:
```bash
cryptsetup -M luks2 -h sha256 -c twofish-xts-plain64 -s 512 -d ./key.bin luksFormat /dev/sdb sec0
```

#### Open/Close disk:
```bash
cryptsetup --key-file ./key.bin open /dev/sdb sec0
```
```bash
cryptsetup close sec0
```

##### Resize disk:
```bash
cryptsetup resize sec0
```

#### Show disk information:
```bash
cryptsetup luksDump /dev/sdb
```

#### Backup/Restore disk headers:
```bash
cryptsetup luksHeaderBackup /dev/sdb --header-backup-file /var/backup/sec0.img
```
```bash
cryptsetup luksHeaderRestore /dev/sdb --header-backup-file /var/backup/sec0.img
```
