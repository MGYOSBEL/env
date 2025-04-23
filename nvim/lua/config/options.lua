-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.colorcolumn = "120"
vim.opt.listchars = { tab = "| ", trail = "·", nbsp = "␣" }
vim.lsp.inlay_hint.enable(false)
vim.g.snacks_animate = false
