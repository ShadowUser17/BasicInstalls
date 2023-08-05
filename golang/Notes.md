#### Create project from template:
```bash
go install golang.org/x/tools/cmd/gonew@latest
```
```bash
gonew github.com/ShadowUser17/go-repo-template github.com/ShadowUser17/<new_project>
```

#### Build application:
```bash
GOOS="linux" GOARCH="amd64" go build -ldflags="-s -w" -o ./app.bin ./...
```
