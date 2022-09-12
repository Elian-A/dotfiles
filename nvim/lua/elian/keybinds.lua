local function map(m, k, v)
  vim.keymap.set(m, k, v, { silent = true })
end

-- Quickly save the current buffer or all buffers
--map('n', '<leader>w', '<CMD>update<CR>')
--map('n', '<leader>W', '<CMD>wall<CR>')

-- Quit neovim
map('n', '<leader>qq', 'ZQ')
map('n', '<leader>ww', 'ZZ')

-- Save file like vscode
map('n', '<C-S>', '<CMD>w<CR>')

-- Buffer Movements
map('n', '<leader>bp', '<CMD>bp<CR>')
map('n', '<leader>bn', '<CMD>bn<CR>')
map('n', '<leader>bd', '<CMD>bd!<CR>')
map('n', "<leader>bl", '<CMD>b#<CR>')

-- New Splits
map('n', '<leader>nv', '<CMD>vnew<CR>')
map('n', '<leader>nh', '<CMD>new split<CR>')

-- Move between splits
map('n', '<leader>h', ":wincmd h<CR>")
map('n', '<leader>j', ':wincmd j<CR>')
map('n', '<leader>k', ':wincmd k<CR>')
map('n', '<leader>l', ":wincmd l<CR>")

-- Resize splits
map('n', '<leader>y', ":vertical resize +2 h<CR>")
map('n', '<leader>o', ":vertical resize -2 h<CR>")
map('n', '<leader>u', ":resize +2 h<CR>")
map('n', '<leader>i', ":resize -2 h<CR>")

-- Move splits
map('n', '<leader><leader>h', "<C-W>H")
map('n', '<leader><leader>j', "<C-W>J")
map('n', '<leader><leader>k', "<C-W>K")
map('n', '<leader><leader>l', "<C-W>L")

-- Exit
map('i', 'hh', "<esc>")

-- Move line up and down in NORMAL and VISUAL modes
-- Reference: https://vim.fandom.com/wiki/Moving_lines_up_or_down
map('n', '<A-j>', '<CMD>move .+1<CR>')
map('n', '<A-k>', '<CMD>move .-2<CR>')
map('x', '<A-j>', ":move '>+1<CR>gv=gv")
map('x', '<A-k>', ":move '<-2<CR>gv=gv") --What's x? all?

-- Use operator pending mode to visually select the whole buffer
-- e.g. dA = delete buffer ALL, yA = copy whole buffer ALL
--map('o', 'A', ':<C-U>normal! mzggVG<CR>`z')
--map('x', 'A', ':<C-U>normal! ggVG<CR>')

--Telescope
map('n', '<leader>ff', '<CMD>Telescope find_files<cr>')
map('n', '<leader>fg', '<CMD>Telescope live_grep<cr>')
map('n', '<leader>fb', '<CMD>Telescope buffers<cr>')
map('n', '<leader>fh', '<CMD>Telescope help_tags<cr>')
map('n', '<leader>fd', '<CMD>Telescope diagnostics<cr>')
