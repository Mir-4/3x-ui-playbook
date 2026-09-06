#!/bin/sh
set -eu

/usr/sbin/nginx -t
/usr/bin/systemctl reload nginx
/usr/bin/systemctl restart x-ui