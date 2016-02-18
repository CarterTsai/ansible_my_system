MRBS
-----------

###  Ansible Galaxy For postgresql

$> ansible-galaxy install zzet.postgresql

### Postgresql Setting Reference
https://github.com/ansible/ansible-examples/blob/master/language_features/postgresql.yml

### RUN
$> ansible-playbook --verbose \
                    --ask-become-pass \
                    -i inventory playbook.yml
