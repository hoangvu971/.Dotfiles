return {
  -- which-key plugin
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      -- any custom which-key configuration you want here
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
