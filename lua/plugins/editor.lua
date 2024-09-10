return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    keys = {
      {
        "<leader>ae",
        ":CopilotChatExplain<CR>",
        mode = "x",
        desc = "Explain selection",
      },
      {
        "<leader>ao",
        ":CopilotChatOptimize<CR>",
        mode = "x",
        desc = "Optimize selection",
      },
      {
        "<leader>ar",
        ":CopilotChatReview<CR>",
        mode = "x",
        desc = "Review selection",
      }, -- visual mode
      { "<leader>ar", ":CopilotChatReview<CR>", desc = "Review selection" }, -- normal mode
    },
    opts = {
      auto_insert_mode = false,
      context = "buffers",
    },
  },

  {
    "rgroli/other.nvim",
    config = function()
      require("other-nvim").setup({
        mappings = {
          "rust",
          {
            pattern = "/path/to/file/src/app/(.*)/.*.ext$",
            target = "/path/to/file/src/view/%1/",
            transformer = "lowercase",
          },
        },
        transformers = {
          lowercase = function(inputString)
            return inputString:lower()
          end,
        },
        style = {
          border = "solid",
          seperator = "|",
          width = 0.7,
          minHeight = 2,
        },
      })
    end,
  },
}
