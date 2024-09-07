local function open_posting(opts)
  opts = vim.tbl_deep_extend("force", {}, {
    esc_esc = false,
    ctrl_hjkl = false,
  }, opts or {})
  local cmd = { "posting" }
  vim.list_extend(cmd, opts.args or {})
  LazyVim.terminal(cmd, opts)
end

vim.keymap.set("n", "<leader>tt", function()
  open_posting({ cwd = LazyVim.root.git() })
end, {
  desc = "Posting (Terminal Rest Client)",
})

vim.keymap.set("n", "<leader>tT", function()
  open_posting()
end, {
  desc = "Posting (cwd)",
})
