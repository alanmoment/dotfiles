return {
  "folke/noice.nvim",
  enabled = false,
  event = "VeryLazy",
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    "rcarriga/nvim-notify",
  },
  config = function()
    local noice = require("noice")
    noice.setup {
      presets = {
        inc_rename = true,
        bottom_search = true,         -- use a classic bottom cmdline for search
        command_palette = true,       -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        lsp_doc_border = false,       -- add a border to hover docs and signature help
      },
      popupmenu = {
        -- cmp-cmdline has more sources and can be extended
        backend = "cmp", -- backend to use to show regular cmdline completions
      },
      lsp = {
        -- can not filter null-ls's data
        -- j-hui/fidget.nvim
        progress = {
          enabled = false,
        },
      },
      messages = {
        -- Using kevinhwang91/nvim-hlslens because virtualtext is hard to read
        view_search = false,
      },
    }
  end,
}
