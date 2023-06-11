#### URLs:
- [earthly-docs](https://docs.earthly.dev/)
- [earthly-releases](https://github.com/earthly/earthly/releases)
- [go-task-docs](https://taskfile.dev/)
- [go-task-releases](https://github.com/go-task/task/releases)

#### Install earthly:
```bash
curl -L "https://github.com/earthly/earthly/releases/download/v0.7.8/earthly-linux-amd64" -o earthly && \
chmod 755 ./earthly && mv ./earthly /usr/local/bin/
```

#### Install task from deb:
```bash
curl -LO "https://github.com/go-task/task/releases/download/v3.26.0/task_linux_amd64.deb" && \
dpkg -i task_linux_amd64.deb && rm -f task_linux_amd64.deb
```

#### Install task from rpm:
```bash
curl -LO "https://github.com/go-task/task/releases/download/v3.26.0/task_linux_amd64.rpm" && \
rpm -U task_linux_amd64.rpm ; rm -f task_linux_amd64.rpm
```
