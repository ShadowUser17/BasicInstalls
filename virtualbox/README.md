#### Install VirtualBox on Fedora 36:
```bash
curl -L "https://download.virtualbox.org/virtualbox/6.1.40/VirtualBox-6.1-6.1.40_154048_fedora36-1.x86_64.rpm" -o virtualbox_x86_64.rpm && \
dnf install -y ./virtualbox_x86_64.rpm
```

#### Install Extension Pack:
```bash
curl -L "https://download.virtualbox.org/virtualbox/6.1.40/Oracle_VM_VirtualBox_Extension_Pack-6.1.40.vbox-extpack" -o virtualbox.vbox-extpack && \
VBoxManage extpack install --replace ./virtualbox.vbox-extpack
```

#### URLs:
- [VirtualBox](https://www.virtualbox.org/wiki/Download_Old_Builds)
- [Vagrant](https://developer.hashicorp.com/vagrant/docs)
- [Packer](https://developer.hashicorp.com/packer/docs)
