return {
  -- https://github.com/mfussenegger/nvim-dap-python
  "mfussenegger/nvim-dap-python",
  ft = "python",
  dependencies = {
    -- https://github.com/mfussenegger/nvim-dap
    "mfussenegger/nvim-dap",
    -- https://github.com/rcarriga/nvim-dap-ui
    "rcarriga/nvim-dap-ui",
  },
  config = function()
    local dap = require "dap"
    local dapui = require "dapui"

    -- Dynamic Python path resolution
    local function get_python_path()
      local venv_path = os.getenv "CONDA_PREFIX"
      if venv_path then
        return venv_path .. "/bin/python"
      else
        return "/usr/bin/python" -- Fallback to system Python
      end
    end

    -- Setup for dap-python
    require("dap-python").setup(get_python_path())

    -- Key mappings for nvim-dap
    vim.api.nvim_set_keymap(
      "n",
      "<leader>db",
      '<cmd>lua require"dap".toggle_breakpoint()<CR>',
      { noremap = true, silent = true }
    )
    vim.api.nvim_set_keymap(
      "n",
      "<leader>dc",
      '<cmd>lua require"dap".continue()<CR>',
      { noremap = true, silent = true }
    )
    vim.api.nvim_set_keymap(
      "n",
      "<leader>di",
      '<cmd>lua require"dap".step_into()<CR>',
      { noremap = true, silent = true }
    )
    vim.api.nvim_set_keymap(
      "n",
      "<leader>do",
      '<cmd>lua require"dap".step_over()<CR>',
      { noremap = true, silent = true }
    )
    vim.api.nvim_set_keymap(
      "n",
      "<leader>dr",
      '<cmd>lua require"dap".repl.toggle()<CR>',
      { noremap = true, silent = true }
    )
  end,
}
