## setup plugins
### install neovim plugin management
https://github.com/junegunn/vim-plug

```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

### Link nvim config to this repo

```
ln -s <path-to-this-repo> "$HOME/.config/nvim"
```

### install plugins

`:PlugInstall`.

### install tree-sitter
* install rust and cargo `curl https://sh.rustup.rs -sSf | sh`
* install tree-sitter `cargo install tree-sitter-cli`


### install language servers
`:LspInstall`

### install debugger
`:VimspectorInstall <adapter>` then `:VimspectorUpdate`
some examples in `vimspector/support/test/<language>`.
