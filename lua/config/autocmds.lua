-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    -- 1. 关闭 Neovim 内置的拼写检查
    vim.opt_local.spell = false
    -- 2. 关闭当前缓冲区的诊断信息显示（彻底消除红线/报错提示）
    vim.diagnostic.enable(false, { bufnr = 0 })
  end
})
