return {
  'nvim-tree/nvim-tree.lua',
  lazy = true,
  config = function()
    require('nvim-tree').setup {

      view = {
        width = 30,
        side = 'left',
      },

      renderer = {
        highlight_git = true,
      },

      filters = {
        dotfiles = false, -- Exclude dotfiles from showing
      },

      git = {
        enable = true, -- Enable git integration
        ignore = false, -- Do not ignore untracked files
      },
    }

    vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
  end,
}

