# Docker

Set up ubuntu container using docker.

```shell
docker build -t ubuntu:basic .
docker run -itd -v /Users/ruiyan:/root/home --name ubuntu ubuntu:basic
docker exec -it ubuntu /bin/zsh
```

