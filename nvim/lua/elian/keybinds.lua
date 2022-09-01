local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end

-- Quickly save the current buffer or all buffers
--map('n', '<leader>w', '<CMD>update<CR>')
--map('n', '<leader>W', '<CMD>wall<CR>')

-- Quit neovim
map('n', '<leader>qq', '<CMD>q<CR>')
map('n', '<leader>ww', '<CMD>wq<CR>')

-- Move to the next/previous buffer
map('n', '<leader>p', '<CMD>bp<CR>')
map('n', '<leader>n', '<CMD>bn<CR>')

-- Move to last buffer
--map('n', "''", '<CMD>b#<CR>')

-- tab splits
map('n', '<leader>v', '<CMD>vsplit<CR>')
map('n', '<leader>h', '<CMD>split<CR>')

-- Move between splits
map('n', '<A-h>', ":wincmd h<CR>")
map('n', '<A-j>', ':wincmd j<CR>')
map('n', '<A-k>', ':wincmd k<CR>')
map('n', '<A-l>', ":wincmd l<CR>")

-- resize splits
map('n', '<leader>pvr', ":vertical resize +1 h<CR>")
map('n', '<leader>nvr', ":vertical resize -1 h<CR>")
map('n', '<leader>phr', ":resize +1 h<CR>")
map('n', '<leader>nhr', ":resize -1 h<CR>")

-- Move splits
map('n', '<leader>mh', "<C-W>H")
map('n', '<leader>mj', "<C-W>J")
map('n', '<leader>mk', "<C-W>K")
map('n', '<leader>ml', "<C-W>L")


-- Move line up and down in NORMAL and VISUAL modes
-- Reference: https://vim.fandom.com/wiki/Moving_lines_up_or_down
map('n', '<C-j>', '<CMD>move .+1<CR>')
map('n', '<C-k>', '<CMD>move .-2<CR>')
map('x', '<C-j>', ":move '>+1<CR>gv=gv")
map('x', '<C-k>', ":move '<-2<CR>gv=gv") --What's x?

-- Use operator pending mode to visually select the whole buffer
-- e.g. dA = delete buffer ALL, yA = copy whole buffer ALL
--map('o', 'A', ':<C-U>normal! mzggVG<CR>`z')
--map('x', 'A', ':<C-U>normal! ggVG<CR>')

--Telescope
map('n', '<leader>ff', '<CMD>Telescope find_files<cr>')
map('n', '<leader>fg', '<CMD>Telescope live_grep<cr>')
map('n', '<leader>fv', '<CMD>Telescope buffers<cr>')
map('n', '<leader>fh', '<CMD>Telescope help_tags<cr>')

