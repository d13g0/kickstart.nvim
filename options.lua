-- OPTIONS

--[[
    References:
    * :help lua-guide
    * https://neovim.io/doc/user/lua-guide.html
    * <space>sh to [s]earch the [h]elp documentation
    * :help vim.opt
    * :help option-list
]]

local opt = vim.opt

-- General
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.g.have_nerd_font = true

opt.updatetime = 250
opt.timeoutlen = 300

opt.mouse = 'a'

-- Numbers
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.cursorlineopt = 'both'
-- opt.scrolloff = 10 -- Minimal number of screen lines to keep above and below the cursor.

-- Indentations
opt.autoindent = true
opt.tabstop = 2
opt.expandtab = true
opt.smartindent = true
opt.breakindent = true

-- Look & Feel
opt.fillchars = { eob = ' ' } -- remove ~ sign for empty lines (nvim default)
opt.signcolumn = 'yes'

opt.splitright = true
opt.splitbelow = true

opt.list = true
opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

opt.inccommand = 'split'

opt.showmode = false -- Don't show the mode, since it's already in the status line
opt.undofile = true -- Save undo history

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
opt.whichwrap:append '<>[]hl'

-- Search
opt.ignorecase = true -- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
opt.smartcase = true

-- Clipboard
vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)
