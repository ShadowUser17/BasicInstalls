#### URLs:
- [infinispan](https://infinispan.org/documentation/)
- [jgroups](http://www.jgroups.org/ug.html)

#### Run embedded mode:
```
/opt/jboss/keycloak/bin/jboss-cli.sh
```
```
embed-server --server-config=standalone-ha.xml
```

#### Show attributes:
```
ls /subsystem=infinispan/cache-container=keycloak/local-cache=keys/component=expiration
```

#### Set attribute:
```
/subsystem=infinispan/cache-container=keycloak/local-cache=keys/component=expiration/:write-attribute(name="max-idle", value=3600000)
```

#### Run script:
```
/opt/jboss/keycloak/bin/jboss-cli.sh --file=update-attrs.cli
```

#### Example script:
```
embed-server --server-config=standalone-ha.xml --std-out=echo
batch
/subsystem=infinispan/cache-container=keycloak/local-cache=keys/component=expiration/:write-attribute(name="max-idle", value=3600000)
/subsystem=infinispan/cache-container=keycloak/local-cache=users/component=expiration/:write-attribute(name="max-idle", value=3600000)
/subsystem=infinispan/cache-container=keycloak/local-cache=realms/component=expiration/:write-attribute(name="max-idle", value=3600000)
run-batch
stop-embedded-server
```
