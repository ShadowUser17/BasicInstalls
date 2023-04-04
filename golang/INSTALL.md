#### Install and configure an environment:
```bash
curl -L "https://github.com/kevincobain2000/gobrew/releases/download/v1.8.1/gobrew-linux-amd64" -o gobrew && \
chmod 755 ./gobrew && mv ./gobrew /usr/local/bin/
```
```bash
echo -e 'export PATH="$HOME/.gobrew/current/bin:$HOME/.gobrew/bin:$PATH"\nexport GOROOT="$HOME/.gobrew/current/go"' >> ~/.bashrc
```
```bash
gobrew install 1.19.8
```
