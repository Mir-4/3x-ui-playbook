#!/usr/bin/env bash
set -euo pipefail

repo_root=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)

docker run --rm \
  --volume "${repo_root}:/work:ro" \
  --workdir /work \
  ubuntu:24.04 \
  bash -ceu '
    export DEBIAN_FRONTEND=noninteractive
    apt-get update -qq
    apt-get install -y -qq ansible nginx-full libnginx-mod-stream openssl
    ansible-playbook -i localhost, -c local verification/nginx-topology.yaml
    ansible-playbook -i localhost, -c local verification/nginx-topology.yaml
  '
