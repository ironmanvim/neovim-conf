return {
  "stevearc/oil.nvim",
  opts = {},
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
  init = function()
    require("oil").setup({
      view_options = {
        is_hidden_file = function(name, _)
          return vim.startswith(name, ".") and not (name == "..")
        end,
      },
    })
  end,
}
