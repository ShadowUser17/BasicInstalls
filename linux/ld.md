#### Configure library path:
- Add to `LIBRARY_PATH`
```bash
export LD_LIBRARY_PATH="${LD_LIBRARY_PATH}:/usr/local/lib/testing"
```
- Add to `ld.so.conf.d`
```bash
echo "/usr/local/lib/testing" > /etc/ld.so.conf.d/testing.conf && ldconfig -v
```
