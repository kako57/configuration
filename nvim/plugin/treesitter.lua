-- require("keybindings")
-- require("packages")
-- require("config")

local configs = require'nvim-treesitter.configs'
configs.setup {
  ensure_installed = "maintained", -- Only use parsers that are maintained
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  }
}

-- vim.opt.foldmethod = "expr"
-- vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
