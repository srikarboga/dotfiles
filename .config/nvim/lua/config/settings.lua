-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- Make line numbers default
vim.opt.number = true

vim.opt.wrap = true
vim.opt.linebreak = true

vim.opt.winborder = 'single'

-- -- Move by display lines, not actual lines
-- vim.keymap.set('n', 'j', 'gj', { desc = 'Move down by display line' })
-- vim.keymap.set('n', 'k', 'gk', { desc = 'Move up by display line' })
-- vim.keymap.set('v', 'j', 'gj', { desc = 'Move down by display line' })
-- vim.keymap.set('v', 'k', 'gk', { desc = 'Move up by display line' })
--
-- -- Keep original behavior accessible
-- vim.keymap.set('n', 'gj', 'j', { desc = 'Move down by actual line' })
-- vim.keymap.set('n', 'gk', 'k', { desc = 'Move up by actual line' })

-- You can also add relative line numbers, to help with jumping.
--  Experiment for yourself to see if you like it!
vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.opt.clipboard = 'unnamedplus'

-- Enable break indent
vim.opt.breakindent = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.incsearch = true
-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 50

vim.opt.isfname:append("@-@")

vim.opt.colorcolumn = "140"

vim.opt.termguicolors = true

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Primeagen tab settings copied
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- zig format settings
vim.g.zig_fmt_parse_errors = 0
vim.g.zig_fmt_autosave = 0
