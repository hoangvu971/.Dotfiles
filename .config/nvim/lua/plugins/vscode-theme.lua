return {
  "Mofiqul/vscode.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("vscode").setup {
      -- Optional customization
      -- transparent = true,
      -- italic_comments = true,
    }
    require("vscode").load()
  end,
}
