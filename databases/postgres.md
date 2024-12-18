#### URLs:
- [Docs](https://www.postgresql.org/docs/)
- [Chart](https://github.com/bitnami/charts/tree/main/bitnami/postgresql)
- [Images](https://hub.docker.com/r/bitnami/postgresql/tags)
- [Releases](https://www.postgresql.org/docs/release/)

#### Backup database:
```bash
pg_dump -h <host> -d <db> -U <user> -W > backup.psql
```

#### Backup all databases:
```bash
export PGHOST="" PGUSER="" PGPASSWORD=""
```
```bash
psql -h "${PGHOST}" -U "${PGUSER}" -c '\l' | awk '$1~/^[a-z]/{print $1}' > databases.txt
```
```bash
for I in `cat databases.txt`; do pg_dump -h "$PGHOST" -d "$I" -U "$PGUSER" > "$I".psql; done
```

#### Restore database:
```bash
psql -h <host> -d <db> -U <user> -W -f backup.psql
```

#### Prepare database:
```
CREATE DATABASE <db_name>;
```
```
CREATE USER <user> WITH ENCRYPTED PASSWORD 'password';
```
```
GRANT ALL PRIVILEGES ON DATABASE <db_name> TO <user>;
```

#### Get database size:
```
SELECT pg_size_pretty(pg_database_size('database_name')) AS database_size;
```
```
SELECT
    datname AS database_name, pg_size_pretty(pg_database_size(datname)) AS database_size
FROM pg_database ORDER BY pg_database_size(datname) DESC;
```
