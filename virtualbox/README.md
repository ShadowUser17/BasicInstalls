#### Install VirtualBox on Fedora 36:
```bash
curl -LO "https://download.virtualbox.org/virtualbox/6.1.42/VirtualBox-6.1-6.1.42_155177_fedora36-1.x86_64.rpm" && \
dnf install -y ./VirtualBox-6.1-6.1.42_155177_fedora36-1.x86_64.rpm
```

#### Install Extension Pack:
```bash
curl -LO "https://download.virtualbox.org/virtualbox/6.1.42/Oracle_VM_VirtualBox_Extension_Pack-6.1.42.vbox-extpack" && \
VBoxManage extpack install --replace ./Oracle_VM_VirtualBox_Extension_Pack-6.1.42.vbox-extpack
```

#### URLs:
- [VirtualBox](https://www.virtualbox.org/wiki/Download_Old_Builds)
- [Vagrant](https://developer.hashicorp.com/vagrant/docs)
- [Packer](https://developer.hashicorp.com/packer/docs)
