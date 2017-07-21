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

By default, macOS does not have sshd or Remote Login enabled. To enable sshd and allow incoming ssh connections:

```shell
$ sudo launchctl load -w /System/Library/LaunchDaemons/ssh.plist
```
