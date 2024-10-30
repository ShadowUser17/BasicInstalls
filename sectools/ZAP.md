#### URLs:
- [Docs](https://www.zaproxy.org/docs/)
- [Docker](https://hub.docker.com/r/zaproxy/zap-stable/tags)
- [Releases](https://github.com/zaproxy/zaproxy/releases)

#### Examples:
- Baseline Scan:
```bash
export ZAP_TARGET=""
export ZAP_REPORT="report-$(date +%d-%m-%Y).html"
```
```bash
docker run --rm --name="zaproxy" --volume="/tmp:/zap/wrk:rw" \
-t "ghcr.io/zaproxy/zaproxy:stable" "zap-baseline.py" -r "${ZAP_REPORT}" -t "${ZAP_TARGET}"
```
- Full Scan:
```bash
export ZAP_TARGET=""
export ZAP_REPORT="report-$(date +%d-%m-%Y).html"
```
```bash
docker run --rm --name="zaproxy" --volume="/tmp:/zap/wrk:rw" \
-t "ghcr.io/zaproxy/zaproxy:stable" "zap-full-scan.py" -r "${ZAP_REPORT}" -t "${ZAP_TARGET}"
```
