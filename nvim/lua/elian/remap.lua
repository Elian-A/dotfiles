-- [[ Basic Keymaps ]]

vim.g.mapleader = " "

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

vim.keymap.set('n', "<leader>pv", vim.cmd.Ex)
vim.keymap.set('n', "<C-s>", vim.cmd.w)
vim.keymap.set('i', "jj", "<Esc>")
vim.keymap.set('n', "<leader>c", vim.cmd.close)
vim.keymap.set('n', "<leader>f", vim.cmd.Format)
