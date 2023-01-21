# Docker

Set up ubuntu container using docker.

```shell
docker build -t ubuntu:basic .
docker run -itd --mount type=bind,src="/Users/ruiyan",target=/root/Home --name ubuntu ubuntu:basic
docker exec -it ubuntu /bin/zsh
```

In ubuntu container, run the following: 

```shell
# nodejs
curl -sL install-node.vercel.app/lts | bash

# formatter
npm install -g js-beautify
```

## Ale & cocnvim

Add the following code to your coc configuration file:

Typing `:CocConfig` in vim to open coc configuration file.

```
{"diagnostic.displayByAle": true}
```
