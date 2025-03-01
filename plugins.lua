-- PLUGINS
--
-- Check plugin status with :Lazy
-- Update plugins with :Lazy update
-- See :help lazy.nvim.txt for info
-- For additional information with loading, sourcing and examples see `:help lazy.nvim-🔌-plugin-spec`
-- Or use telescope!
-- In normal mode type `<space>sh` then write `lazy.nvim-plugin`
-- you can continue same window with `<space>sr` which resumes last telescope search

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field

vim.opt.rtp:prepend(lazypath)

local lazy_config = {
  ui = {
    icons = {
      ft = '',
      lazy = '󰂠 ',
      loaded = '',
      not_loaded = '',
    },
  },
  --   icons = vim.g.have_nerd_font and {} or {
  --     cmd = '⌘',
  --     config = '🛠',
  --     event = '📅',
  --     ft = '📂',
  --     init = '⚙',
  --     keys = '🗝',
  --     plugin = '🔌',
  --     runtime = '💻',
  --     require = '🌙',
  --     source = '📄',
  --     start = '🚀',
  --     task = '📌',
  --     lazy = '💤 ',
  --   },
  performance = {
    rtp = {
      disabled_plugins = {
        '2html_plugin',
        'tohtml',
        'getscript',
        'getscriptPlugin',
        'gzip',
        'logipat',
        --'netrw',
        --'netrwPlugin',
        --'netrwSettings',
        --'netrwFileHandlers',
        'matchit',
        'tar',
        'tarPlugin',
        'rrhelper',
        'spellfile_plugin',
        'vimball',
        'vimballPlugin',
        'zip',
        'zipPlugin',
        -- "tutor",
        'rplugin',
        'syntax',
        'synmenu',
        'optwin',
        'compiler',
        'bugreport',
        'ftplugin',
      },
    },
  },
}

require('lazy').setup({
  'tpope/vim-sleuth', -- Detect tabstop and shiftwidth automatically
  require 'plugins.gitsigns',
  require 'plugins.which-key',
  require 'plugins.telescope',
  require 'plugins.lsp',
  require 'plugins.conform',
  require 'plugins.nvim-cmp',
  -- require 'plugins.tokyonight',
  require 'plugins.rose-pine',
  require 'plugins.treesitter',
  require 'plugins.todo-comments',
  require 'plugins.mini',
  require 'plugins.mason',
  require 'plugins.neo-tree',
  -- require 'plugins.nvim-tree',
  -- require 'kickstart.plugins.debug',
  -- require 'kickstart.plugins.indent_line',
  -- require 'kickstart.plugins.lint',
  -- require 'kickstart.plugins.autopairs',
  -- require 'kickstart.plugins.neo-tree',
  -- require 'kickstart.plugins.gitsigns', -- adds gitsigns recommend keymaps
}, lazy_config)
