require'nvim-tree'.setup()

function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
end

map("n", "<space>op", "<cmd>NvimTreeToggle<CR>", {})
map("n", "<space>or", "<cmd>NvimTreeRefresh<CR>", {})
map("n", "<space`>of", "<cmd>NvimTreeFindFile<CR>", {})
