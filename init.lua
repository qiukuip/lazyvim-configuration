-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("catppuccin").setup({
    auto_integrations = true,
})

vim.g.autoformat = false

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    -- 彻底关闭当前缓冲区的诊断显示
    vim.diagnostic.enable(false, { bufnr = 0 })
  end,
})

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

