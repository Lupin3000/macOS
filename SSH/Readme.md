# SSH config

```shell
Host *
  Protocol 2,1
  PasswordAuthentication no
  ChallengeResponseAuthentication no
  HashKnownHosts yes
  CheckHostIP yes
  Compression yes
  ServerAliveInterval 30
  ServerAliveCountMax 120

Host <name>
  HostName <target>
  User <user>
  AddressFamily inet
  Cipher blowfish-cbc
```
