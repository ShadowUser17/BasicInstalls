#### Dump rules:
```bash
NS="monitoring" CLI="kubectl"; \
for I in $("$CLI" -n "$NS" get promrule -o jsonpath='{.items[*].metadata.name}'); \
do echo "Dump: $NS/$I"; "$CLI" -n "$NS" get promrule "$I" -o yaml > "$I"; done
```
