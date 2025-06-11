#### URLs:
- [Docs](https://mariadb.com/kb/en/documentation/)
- [Chart](https://github.com/bitnami/charts/tree/main/bitnami/mariadb)
- [Images](https://hub.docker.com/r/bitnami/mariadb/tags)

#### List databases:
```
SHOW DATABASES;
```

#### Get active connections:
```
SHOW PROCESSLIST;
```

#### List users:
```
SELECT CONCAT(User, '@', Host) AS login FROM mysql.user;
```

#### Get user privileges:
```
SHOW GRANTS FOR '<user>'@'%';
```

#### Prepare database:
```
CREATE DATABASE <db_name>;
```
```
CREATE USER '<user>'@'%' IDENTIFIED BY 'password';
```
```
GRANT ALL PRIVILEGES ON <db_name>.* TO '<user>'@'%';
```
```
FLUSH PRIVILEGES;
```
