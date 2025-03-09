## setup plugins
### install vim-plug management
https://github.com/junegunn/vim-plug

```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

### link nvim config to this repo

```
git clone https://github.com/YHRen/nvim_config.git
ln -s $(pwd)/nvim_config "$HOME/.config/nvim"
```

### install plugins

`nvim --headless +PlugInstall +PlugUpdate +qall`

### install rust and tree-sitter

```
curl https://sh.rustup.rs -sSf | sh
cargo install tree-sitter-cli
```

### install debugger

`:VimspectorInstall <adapter>` then `:VimspectorUpdate`
some examples in `vimspector/support/test/<language>`.

### on my list

* write a docker file to reproduce nvim environment
* https://github.com/folke/lazy.nvim
* https://github.com/jose-elias-alvarez/null-ls.nvim

### install avante prerequisites

* df
* ripgrep
* fzf

### upgrade nvim

```
git clone https://github.com/neovim/neovim.git
git checkout stable
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install
```
