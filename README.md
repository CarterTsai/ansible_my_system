MRBS
-----------

### Run Vagrant for Create Machine
```
$> vagrant up
```

### Get SSH Config and update inventory
```
$> vagrant ssh-config
```

### Check Ansible can Ping the Remote Machine
```
$> ansible all -m ping -i inventory
```

if the result return pong, that is OK

###  Ansible Galaxy For postgresql
```
$> ansible-galaxy install zzet.postgresql
```

### Postgresql Setting Reference
https://github.com/ansible/ansible-examples/blob/master/language_features/postgresql.yml

### RUN
```
ansible-playbook --verbose \
                    -i inventory playbook.yml
```

```
$> ansible-playbook --verbose \
                    --ask-become-pass \
                    -i inventory playbook.yml
```


### Docker
#### Generator SSH Key and put public key to sshkey directory
```
$> ssh-keygen -t rsa -b 4096 -C "test"

$> cp ~/.ssh/id_rsa.pub ./sshkey/
```

#### Build Image
```
$> docker build -t cartertsai/debain-ssh .
```
