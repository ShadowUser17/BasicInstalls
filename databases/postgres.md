#### URLs:
- [Docs](https://www.postgresql.org/docs/)
- [Chart](https://github.com/bitnami/charts/tree/main/bitnami/postgresql)
- [Images](https://hub.docker.com/r/bitnami/postgresql/tags)
- [Releases](https://www.postgresql.org/docs/release/)

#### Backup database:
```bash
pg_dump -h <host> -d <db> -U <user> -W > backup.psql
```

#### Restore database:
```bash
psql -h <host> -d <db> -U <user> -W -f backup.psql
```
