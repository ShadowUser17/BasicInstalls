#### Build application:
```bash
GOOS="linux" GOARCH="amd64" go build -ldflags="-s -w" -o ./app.bin ./...
```

#### Run tests:
```bash
go test -v -race -shuffle=on -coverprofile=coverage.txt ./...
```

#### Run benchmarks only:
```bash
go test -v -shuffle=on -run=- -bench=. -benchtime=1x ./...
```
