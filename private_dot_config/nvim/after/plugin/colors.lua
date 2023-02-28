require("tokyonight").setup({
  -- use the night style
  style = "storm",
  transparent = true,
  styles = {
    functions = {},
    sidebars = "dark", -- style for sidebars, see below
    floats = "transparent", -- style for floating windows
  },


  sidebars = { "qf", "vista_kind", "terminal", "packer" },
  -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  on_colors = function(colors)
    colors.hint = colors.orange
    colors.error = "#ff0000"
  end,

  on_highlights = function(hl, colors)
    hl.LineNr = {
      fg = colors.blue
    }
    hl.CursorLineNr = {
      fg = colors.yellow
    }
  end

})

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.cmd.colorscheme("tokyonight")
