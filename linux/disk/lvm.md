#### Create physical volume:
```bash
pvcreate /dev/<block_device>
```

### Show physical volumes:
```bash
lvmdiskscan | pvdisplay | pvscan | pvs
```

#### Create volume group:
```bash
vgcreate <group_name> /dev/<block_device> /dev/<block_device>
```

#### Show volume groups:
```bash
vgdisplay | vgscan | vgs
```

#### Extend volume group:
```bash
vgextend <group_name> /dev/<block_device>
```

#### Activate/Deactivate volume group:
```bash
vgchange -a <y|n> <group_name>
```

#### Create logical volume:
```bash
lvcreate <volume_group> -L <size> -n <name> [block_device]
```

#### Show logical volumes:
```bash
lvdisplay | lvscan | lvs
```

#### Extend logical volume:
```bash
lvextend -L <+size> -r /dev/<volume_group>/<volume_name>
```
```bash
lvextend -r -l +100%FREE /dev/<volume_group>/<volume_name>
```
