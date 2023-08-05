#### URLs:
- [act-docs](https://github.com/nektos/act/blob/master/README.md)
- [act-releases](https://github.com/nektos/act/releases)
- [earthly-docs](https://docs.earthly.dev/)
- [earthly-releases](https://github.com/earthly/earthly/releases)
- [go-task-docs](https://taskfile.dev/)
- [go-task-releases](https://github.com/go-task/task/releases)

#### Install act:
```bash
curl -L "https://github.com/nektos/act/releases/download/v0.2.49/act_Linux_x86_64.tar.gz" -o act_linux_amd64.tgz && \
tar -xzf act_linux_amd64.tgz act && mv ./act /usr/local/bin/ && rm -f act_linux_amd64.tgz
```

#### Install earthly:
```bash
curl -L "https://github.com/earthly/earthly/releases/download/v0.7.15/earthly-linux-amd64" -o earthly && \
chmod 755 ./earthly && mv ./earthly /usr/local/bin/
```

#### Install task from deb:
```bash
curl -LO "https://github.com/go-task/task/releases/download/v3.28.0/task_linux_amd64.deb" && \
dpkg -i task_linux_amd64.deb && rm -f task_linux_amd64.deb
```

#### Install task from rpm:
```bash
curl -LO "https://github.com/go-task/task/releases/download/v3.28.0/task_linux_amd64.rpm" && \
rpm -U task_linux_amd64.rpm ; rm -f task_linux_amd64.rpm
```
