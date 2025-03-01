-- thesemason plugins will be installed with :MasonInstallAll
return {
  'williamboman/mason.nvim',
  opts = {
    ensure_installed = {
      -- "prettier",
      'lua-language-server',
      'tailwindcss-language-server',
      'vue-language-server',
      'prettierd',
      'debugpy',
      'pyright',
    },
  },
}
