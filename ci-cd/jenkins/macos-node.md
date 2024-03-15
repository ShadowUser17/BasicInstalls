#### Requirements:
- Create a user for Jenkins and login for initialize.
- Generate SSH key for a Jenkins user.
- Enable `Remote Login` in the `Sharing` menu.

#### Disable FileVault:
- Boot into normal mode.
```bash
/usr/bin/fdesetup disable
```

#### Disable SIP and SSV:
- Reboot into recovery mode.
```bash
csrutil disable
```
```bash
csrutil authenticated-root disable
```
