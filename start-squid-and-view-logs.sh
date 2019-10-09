#!/bin/bash
set -euxo pipefail
docker run -d --rm --name squid --publish 3128:3128 ledgerhq/squid
exec docker exec -it squid tail -f /var/log/squid/access.log
