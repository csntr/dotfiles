return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "catppuccin"
      vim.cmd(":highlight LineNr guifg=#585b70")
    end
  }
}
