-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("catppuccin").setup({
    auto_integrations = true
})

vim.g.autoformat = false

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
