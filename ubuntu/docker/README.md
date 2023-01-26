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

## Cocnvim

```shell
CocInstall coc-word coc-tabnine coc-snippets coc-marketplace coc-lightbulb coc-html coc-xml coc-vimlsp coc-tsserver coc-sql coc-sh coc-pyright coc-pydocstring coc-json coc-java coc-css coc-clangd
```

## CocConfig

Add the following code to your coc configuration file:

Typing `:CocConfig` in vim to open coc configuration file.

```json
{
    "suggest.noselect": true,
    "diagnostic.errorSign": "✗",
    "diagnostic.warningSign": "",
    "diagnostic.checkCurrentLine": true
}
```

## Zshrc

Add the following to `.zshrc` : 

```shell
alias ubuntu="docker exec -it ubuntu /bin/zsh"
```

