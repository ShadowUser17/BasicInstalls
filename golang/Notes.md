#### Build application:
```bash
GOOS="linux" GOARCH="amd64" go build -ldflags="-s -w" -o ./app.bin ./...
```

#### Run tests only:
```bash
go test -v -run=. ./...
```

#### Run fuzz tests only:
```bash
go test -v -fuzz=. ./...
```

#### Run benchmarks only:
```bash
go test -v -bench=. -benchmem ./...
```
