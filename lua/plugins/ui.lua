local colors = require("tokyonight.colors").setup()

return {
  {
    "rcarriga/nvim-notify",
    opts = {
      timeout = 6000,
    },
  },

  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        -- Makes tabs behave like tabs instead of buffers
        mode = "tabs",
        -- Adds error/warning info to tabs
        diagnostics = "nvim_lsp",
        hover = {
          enabled = true,
          reveal = { "close" },
        },
      },
    },
  },

  {
    "petertriho/nvim-scrollbar",
    lazy = false,
    opts = {
      handle = {
        color = colors.bg_highlight,
      },
      marks = {
        Search = { color = colors.orange },
        Error = { color = colors.error },
        Warn = { color = colors.warning },
        Info = { color = colors.info },
        Hint = { color = colors.hint },
        Misc = { color = colors.purple },
      },
    },
  },

  {
    "akinsho/toggleterm.nvim",
    version = "*",
    keys = {
      {
        "<leader>tt",
        ":ToggleTerm<CR>",
        mode = "n",
        desc = "Toggle Terminal",
      },
    },
    opts = {
      direction = "float",
    },
  },
}
