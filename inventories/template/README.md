# Inventory template

This directory is safe to commit. It contains placeholder host and deployment values.

Use this directory as a reference for whatever private inventory layout you choose.
For local-only experiments, copy it outside the repository or into another ignored path.

Example run after copying and filling values:

```bash
ansible-playbook -i /path/to/private/hosts.yml playbook.yaml
```
