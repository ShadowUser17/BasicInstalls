#### Documentation:
- [LVM](https://wiki.archlinux.org/title/LVM)
- [RAID](https://wiki.archlinux.org/title/RAID)
- [LUKS](https://gitlab.com/cryptsetup/cryptsetup/-/wikis/DMCrypt)

#### Show disk attributes:
```bash
smartctl -HA /dev/<block_device>
```

#### Safe remove external disk:
```bash
udisksctl power-off --block-device /dev/<block_device>
```

#### Create disk dump:
```bash
dd if=<block_device> of=<dump_file> bs=64K conv=noerror,sync status=progress
```
```bash
dd if=<block_device> bs=64K conv=noerror,sync | gzip -c > <dump_file>
```

#### Scan bad sectors:
```bash
badblocks -n -v <block_device> > ./badblocks.txt
```

#### Mark bad sectors in ext2/ext3/ext4:
```bash
e2fsck -l ./badblocks.txt <block_device>
```

#### Show marked bad sectors:
```bash
dumpe2fs -b <block_device>
```

#### Show ext2/ext3/ext4 all attributes:
```bash
dumpe2fs <block_device>
```

#### Show ext2/ext3/ext4 tunable attributes:
```bash
tune2fs -l <block_device>
```

#### Scan filesystem:
```bash
fsck -y <block_device>
```

#### Resize ext2/ext3/ext4:
```bash
resize2fs <block_device>
```

#### Show available inodes/space:
```bash
df -i ; df -h
```

#### Show disk usage for file/dir:
```bash
du -hs <path>
```

#### Reduces fragmentation for ext4:
```bash
e4defrag -v <mount_point>
```

#### Create ext2/ext3/ext4 filesystem:
```bash
mke2fs -t ext4 -L <label> <block_device>
```

#### Remount filesystem with new options:
```bash
mount -o remount,<new_option> <block_device> <mount_point>
```
