#!/bin/bash
set -euxo pipefail
docker build --pull -t ledgerhq/squid .
docker tag ledgerhq/squid ledgerhq/squid:stretch-slim
docker push ledgerhq/squid:latest
docker push ledgerhq/squid:stretch-slim
