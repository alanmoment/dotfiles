return {
  'nvim-treesitter/nvim-treesitter',
  enabled = true,
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
    "windwp/nvim-ts-autotag",
  },
  config = function()
    require('nvim-treesitter.configs').setup {
      auto_install = true, -- auto install the missing parse when enter the buffer
      highlight = {
        enable = true,
        disable = { "groovy", "java" },
        additional_vim_regex_highlighting = false,
      },
      -- enable indentation
      indent = {
        enable = true
      },
      -- enable autotagging (w/ nvim-ts-autotag plugin)
      autotag = {
        enable = true,
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = '+',
          node_incremental = '+',
          scope_incremental = false,
          node_decremental = '_',
        },
      },
    }

    -- user treesitter to provider fold functional
    local opt = vim.opt
    opt.foldmethod = "expr"
    opt.foldexpr = "nvim_treesitter#foldexpr()"
    opt.foldenable = true
    opt.foldlevelstart = 99

    -- enable highlight on F4
    local keymap = vim.keymap.set
    local default_opts = { noremap = true, silent = true }
    keymap("n", "<F4>", ":TSBufToggle highlight<CR>", default_opts)
  end
}
