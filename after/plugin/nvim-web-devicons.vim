lua << END
require'nvim-web-devicons'.setup({
  override = {
    zsh = {
        icon = "",
        color = "#428850",
        cterm_color = "65",
        name = "Zsh"
    },
    lir_folder_icon = {
      icon = "",
      color = "#7ebae4",
      name = "LirFolderNode"
    },
  };
  default = true;
})
END
