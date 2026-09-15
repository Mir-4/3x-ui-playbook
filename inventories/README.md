# Inventory

This playbook is intended for one personal VPS.

Edit `inventories/hosts.yml` with the server address and SSH settings, then put
real deployment identity/secrets in an Ansible Vault file loaded by the
`webservers` group, for example:

```bash
ansible-vault create group_vars/webservers/vault.yaml
```

Minimum vaulted values:

```yaml
xui_panel_domain: "panel.example.com"
xui_reality_domain: "cdn.example.com"
certbot_email: "admin@example.com"

# Optional. Leave empty to let the playbook generate/persist them on the host.
xui_reality_private_key: ""
xui_reality_public_key: ""
xui_reality_short_ids: []
```

Run:

```bash
ansible-playbook -i inventories/hosts.yml playbook.yaml --ask-vault-pass
```
