#### URLs:
- [ssd](https://wiki.archlinux.org/title/Solid_state_drive)
- [ext4](https://docs.kernel.org/admin-guide/ext4.html)

#### SSD preparations:
```bash
mke2fs -t ext4 /dev/nvme0n1p1
```
```bash
blkid /dev/nvme0n1p1
```
```bash
echo 'UUID=6e0e630c-74ff-47a8-a61f-c426fcbb7e1f /nvme ext4 defaults,discard 0 2' >> /etc/fstab
```
```bash
systemctl daemon-reload
```
```bash
systemctl enable fstrim.timer
```
