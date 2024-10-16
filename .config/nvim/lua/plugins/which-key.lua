return {
  -- which-key plugin
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
    },
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
    config = function(_, opts)
      require("which-key").setup(opts)
      -- Add this line to set the highlight group
      vim.cmd [[highlight WhichKeyFloat ctermbg=NONE ctermfg=NONE]]
    end,
  },
  -- mini.nvim plugin
  {
    "echasnovski/mini.nvim",
    version = false, -- Always use the latest version
    config = function()
      require("mini.icons").setup({
        -- Setup your icons here
        -- Example: Customize to show specific symbols
        symbols = {
          error = " ",
          warning = " ",
          info = " ",
          hint = " ",
        }
      })
    end,
  },
}
