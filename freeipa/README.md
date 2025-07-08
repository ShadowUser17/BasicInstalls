#### Show enabled users:
```bash
ldapsearch -H "ldap://localhost" -D "uid=admin,cn=users,cn=accounts,dc=testing,dc=local" -w "<passwd>" -b "dc=testing,dc=local" \
'(&(objectClass=person)(uid=*)(!(nsaccountlock=TRUE)))' uid cn nsaccountlock
```

#### Show group member users:
```bash
ldapsearch -H "ldap://localhost" -D "uid=admin,cn=users,cn=accounts,dc=testing,dc=local" -w "<passwd>" -b "dc=testing,dc=local" \
'(&(objectClass=person)(uid=*)(memberof=cn=*,cn=groups,cn=accounts,dc=*))' uid cn nsaccountlock
```

#### Validate SSSD config:
```bash
sssctl config-check -c /etc/sssd/sssd.conf
```

#### Clear SSSD cache:
```bash
sssctl cache-expire -E
```

#### URLs:
- [freeipa](https://www.freeipa.org/page/Documentation.html)
- [sssd](https://sssd.io/docs/introduction.html)
