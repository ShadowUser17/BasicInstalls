#### URLs:
- [Docs](https://www.postgresql.org/docs/)
- [Chart](https://github.com/bitnami/charts/tree/main/bitnami/postgresql)
- [Images](https://hub.docker.com/r/bitnami/postgresql/tags)
- [Releases](https://www.postgresql.org/docs/release/)

#### Backup database:
```bash
pg_dump --host <host> --dbname <db> --username <user> --no-owner --no-privileges > backup.psql
```

#### Backup all databases:
```bash
export PGHOST="" PGUSER="" PGPASSWORD=""
```
```bash
psql --host "${PGHOST}" --username "${PGUSER}" --command '\l' | awk '$1~/^[a-z]/{print $1}' > databases.txt
```
```bash
for I in `cat databases.txt`; do
    pg_dump --host "$PGHOST" --dbname "$I" --username "$PGUSER" --no-owner --no-privileges > "$I".psql
done
```

#### Restore database:
```bash
psql --host <host> --dbname <db> --username <user> --file backup.psql
```

#### Prepare database:
```
CREATE DATABASE <db_name>;
```
```
CREATE USER <user> WITH PASSWORD 'password';
```
```
GRANT ALL PRIVILEGES ON DATABASE <db_name> TO <user>;
```

#### Create database copy:
```
GRANT <user> TO postgres;
```
```
CREATE DATABASE <db_dst> WITH TEMPLATE <db_src> OWNER <user>;
```

#### Change user password:
```
ALTER USER <user> WITH PASSWORD 'password';
```

#### Get active connections:
```
SELECT datname, usename, client_addr, client_port, state FROM pg_stat_activity;
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
