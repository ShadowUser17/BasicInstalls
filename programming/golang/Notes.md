#### Optimize runtime (Scheduler/GC):
- The `GOMAXPROCS` variable limits the number of operating system threads.
- The `GOMEMLIMIT` variable sets a soft memory limit for the runtime.
- The `GOGC` variable set the initial garbage collection target percentage.

#### Get module/object documentation:
```bash
go doc <module>
```
```bash
go doc <module>.<object>
```

#### URLs:
- [runtime](https://pkg.go.dev/runtime)
- [godoc](https://pkg.go.dev/golang.org/x/tools/cmd/godoc)
