#### PSQL backup database:
```bash
pg_dump -h <host> -d <db> -U <user> -W > backup.psql
```

#### PSQL restore database:
```bash
psql -h <host> -d <db> -U <user> -W -f backup.psql
```
