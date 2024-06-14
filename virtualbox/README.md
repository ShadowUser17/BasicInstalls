#### Install VirtualBox on Fedora:
```bash
dnf config-manager --add-repo "http://download.virtualbox.org/virtualbox/rpm/fedora/virtualbox.repo"
```
```bash
dnf install -y VirtualBox-7.0
```
```bash
usermod -aG vboxusers <username>
```

#### Install Extension Pack:
```bash
curl -LO "https://download.virtualbox.org/virtualbox/7.0.18/Oracle_VM_VirtualBox_Extension_Pack-7.0.18.vbox-extpack" && \
VBoxManage extpack install --replace ./Oracle_VM_VirtualBox_Extension_Pack-7.0.18.vbox-extpack
```

#### Install Vagrant on Fedora:
```bash
dnf config-manager --add-repo "https://rpm.releases.hashicorp.com/fedora/hashicorp.repo"
```
```bash
dnf -y install vagrant
```

#### Warning!
- VirtualBox doesn't work without CPU virtualization.
- VirtualBox doesn't work when secure boot is enabled.

#### URLs:
- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- [Vagrant](https://developer.hashicorp.com/vagrant/docs)
- [Packer](https://developer.hashicorp.com/packer/docs)
