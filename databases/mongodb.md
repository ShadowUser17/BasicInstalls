#### URLs:
- [Docs](https://www.mongodb.com/docs/)
- [Chart](https://github.com/bitnami/charts/tree/main/bitnami/mongodb)
- [Images](https://hub.docker.com/r/bitnami/mongodb/tags)
- [Releases](https://github.com/mongodb/mongo/tags)

#### Connect to DB:
```bash
mongosh "mongodb://192.168.60.5:27017/testing"
```

#### Create users:
```
db.createUser({
  user: "<user>",
  pwd: "<password>",
  roles: [
    {role: "dbAdmin", db: "<database>"}
  ]
});
```
```
db.createUser({
  user: "<user>",
  pwd: "<password>",
  roles: [
    {role: "readWrite", db: "<database>"}
  ]
});
```
```
db.getUsers();
```

#### Backup database:
```bash
mongodump --uri='mongodb://192.168.60.5:27017/testing' --gzip --archive
```
```bash
mongodump --host="192.168.60.5:27017" --db="testing" --gzip --archive
```

#### Restore database:
```bash
mongorestore --uri='mongodb://192.168.60.5:27017/testing' <backup> --gzip --archive
```
