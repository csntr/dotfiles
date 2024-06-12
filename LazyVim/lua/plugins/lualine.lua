local mocha = require("catppuccin.palettes").get_palette("mocha")

-- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.

-- stylua: ignore
local colors = {
  blue   = mocha.blue,
  sky    = mocha.sky,
  black  = mocha.base,
  white  = mocha.lavender,
  red    = mocha.maroon,
  violet = mocha.mauve,
  grey   = mocha.surface0,
  yellow = mocha.yellow,
}

local bubbles_theme = {
  normal = {
    a = { fg = colors.black, bg = colors.blue },
    b = { fg = colors.white, bg = colors.grey },
    c = { fg = colors.black, bg = colors.black },
  },

  insert = { a = { fg = colors.black, bg = colors.violet } },
  visual = { a = { fg = colors.black, bg = colors.yellow } },
  replace = { a = { fg = colors.black, bg = colors.red } },
  command = { a = { fg = colors.black, bg = colors.sky } },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.black, bg = colors.black },
  },
}

return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      options = {
        theme = bubbles_theme,
        component_separators = "┆",
        section_separators = { left = "", right = "" },
        disabled_filetypes = {
          statusline = { "neo-tree" },
        },
      },
      sections = {
        lualine_a = {
          { "mode", separator = { left = "" }, right_padding = 2 },
        },
        lualine_b = { "filename", "branch" },
        lualine_c = { "fileformat" },
        lualine_x = {},
        lualine_y = { "filetype" },
        lualine_z = {
          { "location", separator = { right = "" }, left_padding = 2 },
        },
      },
    })
  end,
}
