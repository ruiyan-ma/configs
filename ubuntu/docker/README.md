# Docker

Set up ubuntu container using docker.

```shell
docker build -t ubuntu:basic .
docker run -itd -v /Users/ruiyan:/root/home --name ubuntu ubuntu:basic
docker exec -it ubuntu /bin/zsh
```

In ubuntu container, run the following:

```
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

## Zshrc

Add the following to `.zshrc` : 

```shell
alias ubuntu="docker exec -it ubuntu /bin/zsh"
```

