vim.keymap.set("n", "<leader>gwt", function()
  require("telescope").extensions.git_worktree.git_worktrees()
end, {
  desc = "Git Worktrees Toggle",
})

vim.keymap.set("n", "<leader>gwc", function()
  require("telescope").extensions.git_worktree.create_git_worktree()
end, {
  desc = "Git Create Worktree",
})
