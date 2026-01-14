return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {},
  config = function(_, opts)
    require('oil').setup(opts)

    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'oil',
      callback = function()
        vim.opt_local.winbar = "%#Title#📂 Oil File Explorer (%{fnamemodify(getcwd(), ':~')})"
      end,
    })
  end,
  -- Optional dependencies
  dependencies = { { 'echasnovski/mini.icons', opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
}
