-- Create a custom autocommand group to keep things organized
-- 'clear = true' ensures no duplicate autocmds if this file is reloaded
local group = vim.api.nvim_create_augroup("UserConfig", { clear = true })

-- Highlight text on yank (copy) for a brief moment
vim.api.nvim_create_autocmd("TextYankPost", {
  group = group,
  callback = function()
    vim.highlight.on_yank({ timeout = 120 }) -- duration in ms
  end,
  desc = "Highlight on yank",
})

-- Equalize split window sizes automatically when resizing Vim
vim.api.nvim_create_autocmd("VimResized", {
  group = group,
  callback = function()
    vim.cmd("wincmd =") -- make all splits equal size
  end,
  desc = "Equalize splits on resize",
})

-- Remove trailing whitespace before saving a file
vim.api.nvim_create_autocmd("BufWritePre", {
  group = group,
  pattern = "*",
  callback = function()
    local save = vim.fn.winsaveview()
    vim.cmd([[%s/\s\+$//e]])
    vim.fn.winrestview(save)
  end,
  desc = "Trim trailing whitespace on save",
})
