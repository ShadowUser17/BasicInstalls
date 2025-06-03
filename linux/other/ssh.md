#### Disable password authentication:
```
AuthenticationMethods publickey
```

#### Change Passphrase:
```bash
ssh-keygen -f <ssh_key_file> -p
```

#### Local port forwarding:
- Forward a port from the server to the local machine.
```bash
ssh -L <local_port>:<local_addr>:<remote_port> <dst_host>
```

#### Remote port forwarding:
- Forward a port from the local machine to the remote server.
```bash
ssh -R <local_port>:<local_addr>:<remote_port> <dst_host>
```
