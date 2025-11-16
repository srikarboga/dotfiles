-- remaps
-- Allows me to move lines around in visual mode
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

--makes search terms stay in the middle
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

--allows paste without removing current buffer
vim.keymap.set('x', 'p', '"_dP')

-- Default paste (overwrites register)
vim.keymap.set('x', '<leader>p', 'p')

--allows ci without removing current paste buffer
vim.keymap.set('n', 'ci(', '"_ci(')
vim.keymap.set('n', 'ci)', '"_ci)')
vim.keymap.set('n', 'ci{', '"_ci{')
vim.keymap.set('n', 'ci}', '"_ci}')
vim.keymap.set('n', "ci'", '"_ci\'')
vim.keymap.set('n', 'ci[', '"_ci[')
vim.keymap.set('n', 'ci]', '"_ci]')
vim.keymap.set('n', 'ci"', '"_ci"')

--allows use of d without copying
vim.keymap.set('n', 'd', '"_d')
vim.keymap.set('v', 'd', '"_d')

--inverse tab in insert mode
vim.keymap.set('i', '<S-Tab>', '<C-d>')

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

--tabs in normal mode
vim.keymap.set('n', '<S-Tab>', '<<')
vim.keymap.set('n', '<Tab>', '>>')

-- capital Q sucks according to primagen
vim.keymap.set('n', 'Q', '<nop>', { noremap = true })

-- to disable the q: cmd history window but since this also disables macros will keep this commented for now
-- vim.keymap.set('n', 'q', '<nop>', { noremap = true })

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`
--
-- Map <leader>a to :Explore
vim.keymap.set('n', '<leader>a', ':Explore<CR>', { noremap = true, silent = true, desc = 'Open netrw file explorer' })

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set("n", "<leader>bf", vim.lsp.buf.format)

-- -- Quickfix list settings
-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Use ghostty splits or tmux splits instead
-- -- Keybinds to make split navigation easier.
-- --  Use CTRL+<hjkl> to switch between windows
-- --
-- --  See `:help wincmd` for a list of all window commands
-- vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
-- vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
-- vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
-- vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
