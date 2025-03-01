-- KEYMAPS

local map = vim.keymap.set
-- Diagnostic keymaps
map('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
map('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

local opts = { silent = true, noremap = true }

-- Speed
-- map("n", ";", ":", { desc = "CMD enter command mode" })
map('i', 'jk', '<ESC>', opts)
map('i', 'kj', '<ESC>', opts)

-- Nostalgia Ctrl+A
map('n', '<C-a>', 'ggVG', { desc = 'Select All' })

-- Maps numeric keypad
map('n', '<PageUp>', '<C-U>', { desc = 'Page Up' })
map('n', '<PageDown>', '<C-D>', { desc = 'Page Down' })
map('i', '<PageUp>', '<C-O><C-U>', { desc = 'Page Up' })
map('i', '<PageDown>', '<C-O><C-D>', { desc = 'Page Down' })

-- Toggle comments
map('n', '<leader>/', 'gcc', { desc = 'Toggle comment', remap = true })
map('v', '<leader>/', 'gc', { desc = 'Toggle comment', remap = true })

-- Split current buffer <C-w> controls buffer window
map('n', '<leader>bsv', '<C-w>v', { desc = 'split [v]ertically' })
map('n', '<leader>bsh', '<C-w>s', { desc = 'split [h]orizontally' })
map('n', '<leader>bse', '<C-w>=', { desc = 'split [e]qual size' })
map('n', '<leader>bsx', '<cmd>close<CR>', { desc = 'split e[x]it' })
map('n', '<Tab>', ':bn<CR>', opts)
map('n', '<leader>x', ':bd<CR>', { desc = 'Close Buffer' })
-- working with tabs
map('n', '<leader>to', '<cmd>tabnew<CR>', { desc = 'Open a new tab' })
map('n', '<leader>tx', '<cmd>tabclose<CR>', { desc = 'Close current tab' })
map('n', '<leader>tn', '<cmd>tabn<CR>', { desc = 'Go to new tab' })
map('n', '<leader>tp', '<cmd>tabp<CR>', { desc = 'Go to previous tab' })
map('n', '<leader>tf', '<cmd>tabnew %<CR>', { desc = 'Open current buffer in new tab' })

-- working with sessions
map('n', '<leader>sr', '<cmd>SessionRestore<CR>', { desc = 'Restore session for cwd' })
map('n', '<leader>ss', '<cmd>SessionSave<CR>', { desc = 'Save session for auto session root dir' })
map('n', '<leader>nh', ':nohl<CR>', { desc = 'Clear search highlights' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

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
