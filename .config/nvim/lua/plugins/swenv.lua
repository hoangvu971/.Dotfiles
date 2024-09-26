return {
  "AckslD/swenv.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  ft = "python", -- Lazy load only for Python files
  config = function()
    local swenv = require "swenv"
    local swenv_api = require "swenv.api"

    swenv.setup {
      get_venvs = function(venvs_path)
        return swenv_api.get_venvs(venvs_path)
      end,
      venvs_path = vim.fn.expand "~/venvs",
      post_set_venv = function()
        vim.cmd "LspRestart" -- Restart LSP after setting environment
      end,
    }

    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "python" },
      callback = function()
        swenv_api.auto_venv()
      end,
    })
  end,
}
