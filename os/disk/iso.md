#### Create ISO from directory:
```bash
genisoimage -R -o <image_name> <src_dir | src_file>
```
```bash
mkisofs -R -o <image_name> <src_dir | src_file>
```

#### Mount ISO to directory:
```bash
mount -t iso9660 -o ro <image_name> <mnt_dir>
```
