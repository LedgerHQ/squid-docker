# squid-docker
Quick N dirty container for dev purpose

Github repository: https://github.com/LedgerHQ/squid-docker  
Dockerhub repository: https://hub.docker.com/r/ledgerhq/squid  

## build
```shell
docker build --pull -t ledgerhq/squid .
# or
./build.sh
```

## RUN
```shell
docker pull ledgerhq/squid:latest
docker run -d --rm --name squid --publish 3128:3128 ledgerhq/squid
docker exec -it squid tail -f /var/log/squid/access.log
# or
./start-squid-and-view-logs.sh
```

## share with remote server
```shell
ssh -R 3128:127.0.0.1:3128 you@server
# and on remote shell
export http_proxy='http://127.0.0.1:3128' ; export https_proxy='http://127.0.0.1:3128'
```
