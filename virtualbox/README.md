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
curl -LO "https://download.virtualbox.org/virtualbox/7.0.8/Oracle_VM_VirtualBox_Extension_Pack-7.0.8.vbox-extpack" && \
VBoxManage extpack install --replace ./Oracle_VM_VirtualBox_Extension_Pack-7.0.8.vbox-extpack
```

#### Install Vagrant on Fedora:
```bash
dnf config-manager --add-repo "https://rpm.releases.hashicorp.com/fedora/hashicorp.repo"
```
```bash
dnf -y install vagrant
```

#### URLs:
- [VirtualBox](https://www.virtualbox.org/wiki/Download_Old_Builds)
- [Vagrant](https://developer.hashicorp.com/vagrant/docs)
- [Packer](https://developer.hashicorp.com/packer/docs)
