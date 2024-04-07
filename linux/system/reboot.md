#### Check on RPM-based:
- You must install `yum-utils` or `dnf-utils` package:
```bash
needs-restarting -r
```

#### Check on DEB-based:
- You must install `needrestart` package:
```bash
needrestart
```
- You must install `debian-goodies` package:
```bash
checkrestart
```
```bash
[ -f /var/run/reboot-required ] && cat /var/run/reboot-required
```
```bash
[ -f /var/run/reboot-required.pkgs ] && cat /var/run/reboot-required.pkgs
```
