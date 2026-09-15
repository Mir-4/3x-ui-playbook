# Inventory template

This directory is safe to commit. It contains placeholder host and deployment values.

To create your private inventory:

```bash
cp -a inventories/template inventories/real
$EDITOR inventories/real/hosts.yml
$EDITOR inventories/real/group_vars/webservers/deployment.yml
```

Run the playbook with:

```bash
ansible-playbook -i inventories/real/hosts.yml playbook.yaml
```

`inventories/real/` is ignored by Git and should contain real hosts, domains, and persistent generated values.
