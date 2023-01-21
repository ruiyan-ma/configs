# Docker

Set up ubuntu container using docker.

```shell
docker build -t ubuntu:basic .
docker run -itd --mount type=bind,src="/Users/ruiyan",target=/root/Home --name ubuntu ubuntu:basic
docker exec -it ubuntu /bin/zsh
```



