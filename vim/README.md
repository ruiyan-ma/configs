# vim-plug

```shell
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

# vimrc

The back up of ~/.vimrc. 

Use Vim-Plug to manage all plugins.

# Ideavimrc

The backup of ~/.ideavimrc

# cocnvim

``` shell
CocInstall coc-word coc-tabnine coc-snippets coc-marketplace coc-lightbulb coc-xml coc-vimlsp coc-sql coc-pyright coc-pydocstring coc-json coc-java coc-clangd
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
