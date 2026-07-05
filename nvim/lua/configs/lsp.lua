require("nvchad.configs.lspconfig").defaults()

local mason_lspconfig = require("mason-lspconfig")

require("mason").setup()

mason_lspconfig.setup({
  ensure_installed = {
    "pyright",
    "lua_ls",
  },
})
