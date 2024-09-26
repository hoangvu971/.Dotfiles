return {
  "tpope/vim-dadbod",
  lazy = true, -- Lazy load to optimize startup time
  cmd = { "DB", "DBUI", "DBUIToggle", "DBUIFindBuffer", "DBUIRenameBuffer" }, -- Commands that will trigger loading
  config = function()
    -- Optionally, you can configure anything related to the plugin here
    vim.g.db_ui_auto_execute_table_helpers = 1 -- Example of configuring the UI helper to run automatically
  end,
  dependencies = { "kristijanhusak/vim-dadbod-ui", "kristijanhusak/vim-dadbod-completion" },
}
