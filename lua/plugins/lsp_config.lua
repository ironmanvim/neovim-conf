local utils = require("plugins.lsp.util")

return {
  "neovim/nvim-lspconfig",
  init = function()
    require("lspconfig")["ocamllsp"].setup({
      capabilities = utils.capabilities,
      on_attach = utils.on_attach,
      handlers = utils.handlers,
    })
    require("lspconfig")["gleam"].setup({
      capabilities = utils.capabilities,
      on_attach = utils.on_attach,
      handlers = utils.handlers,
    })
  end,
}
